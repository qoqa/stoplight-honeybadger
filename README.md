# Stoplight::Honeybadger
Honeybadger notifier for Stoplight 

## Installation

Add this line to your application's Gemfile:

```
gem 'stoplight-honeybadger'
```

And then execute:
```
$ bundle install
```

Or install it yourself as:
```
$ gem install stoplight-honeybadger
```

## Usage

Make sure you have the [honeybadger gem](https://github.com/honeybadger-io/honeybadger-ruby) installed before configuring Stoplight.

```ruby
require 'honeybadger'

notifier = Stoplight::Honeybadger::Notifier.new(Honeybadger)
# => #<Stoplight::Honeybadger::Notifier:...>
Stoplight::Light.default_notifiers += [notifier]
# => [#<Stoplight::Notifier::IO:...>, #<Stoplight::Honeybadger::Notifier:...>]
```

You can configure notifier to add custom option to the notification:

```
notifier = Stoplight::Honeybadger::Notifier.new(Honeybadger, tags: {foo: 'bar'})
# => #<Stoplight::Honeybadger::Notifier:...>
Stoplight::Light.default_notifiers += [notifier]
# => [#<Stoplight::Notifier::IO:...>, #<Stoplight::Honeybadger::Notifier:...>]
```

## Development

After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and the created tag, and push the .gem file to rubygems.org.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/qoqa/stoplight-honeybadger

## License

The gem is available as open source under the terms of the MIT License.
