# TableJoin

This gem allows arrays of hashes that resemble database table like data to be joined like database tables can be joined.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'table_join'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install table_join

## Usage

For example:

town_names = [
  { town_id: 'ams', name: 'Amsterdam' },
  { town_id: 'par', name: 'Paris' }
]

town_countries = [
  { town_id: 'ams', country: 'The Netherlands' },
  { town_id: 'par', country: 'France' }
]

table_join(town_names, town_countries, join_key: :town_id) =>
[
  { town_id: 'ams', name: 'Amsterdam', country: 'The Netherlands' },
  { town_id: 'par', name: 'Paris', country: 'France' }
]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomtt/table_join. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TableJoin project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tomtt/table_join/blob/master/CODE_OF_CONDUCT.md).
