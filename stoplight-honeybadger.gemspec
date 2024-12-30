# frozen_string_literal: true

require_relative 'lib/stoplight/honeybadger/version'

Gem::Specification.new do |spec|
  spec.name = 'stoplight-honeybadger'
  spec.version = '1.0.0'
  spec.authors = ['QoQa']
  spec.email = ['dev@qoqa.com']

  spec.summary = 'Honeybadger notifier for Stoplight'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/qoqa/stoplight-honeybadger'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.3.3'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/releases"

  spec.files = ['LICENSE.txt', 'README.md'] +
               Dir.glob(File.join('lib', '**', '*.rb'))
  spec.require_paths = ['lib']

  spec.metadata['rubygems_mfa_required'] = 'true'
end
