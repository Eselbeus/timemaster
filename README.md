# Timemaster

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/timemaster`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timemaster'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timemaster

## Usage

Here are the basic methods:

Converting strings to and from date and datetime:

string_to_date 
string_to_datetime
date_to_string
datetime_to_string
date_to_string_european_format
datetime_to_string_european_format

When converting to string, you may pass a second argument as "/", "-", or "" to define separator. "/" is the default.

Converting iso strings to and from datetime:

iso_string_to_date
iso_string_to_datetime
date_to_iso_string
datetime_to_iso_string

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/timemaster. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Timemaster project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/timemaster/blob/master/CODE_OF_CONDUCT.md).

