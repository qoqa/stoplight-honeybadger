# frozen_string_literal: true

module Stoplight
  module Honeybadger
    # Usage:
    #
    #   notifier = Stoplight::Honeybadger::Notifier.new('api key')
    #   Stoplight::Light.default_notifiers += [notifier]
    #
    class Notifier < ::Stoplight::Notifier::Base
      DEFAULT_OPTIONS = {
        parameters: {},
        session: {},
        context: {}
      }.freeze

      # @return [String]
      attr_reader :api_key
      # @return [Proc]
      attr_reader :formatter
      # @return [Hash{Symbol => Object}]
      attr_reader :options

      # rubocop:disable Lint/MissingSuper
      # @param api_key [String]
      # @param formatter [Proc, nil]
      # @param options [Hash{Symbol => Object}]
      # @option options [Hash] :parameters
      # @option options [Hash] :session
      # @option options [Hash] :context
      def initialize(api_key, formatter = nil, options = {})
        @api_key = api_key
        @formatter = formatter || Stoplight::Default::FORMATTER
        @options = DEFAULT_OPTIONS.merge(options)
      end
      # rubocop:enable Lint/MissingSuper

      # @param light [Stoplight::Light]
      # @param from_color [String]
      # @param to_color [String]
      # @param error [StandardError]
      # @return [String]
      def notify(light, from_color, to_color, error)
        message = formatter.call(light, from_color, to_color, error)
        ::Honeybadger.notify(options.merge(
                               api_key: api_key,
                               error_message: message,
                               backtrace: error&.backtrace
                             ))
        message
      end
    end
  end
end
