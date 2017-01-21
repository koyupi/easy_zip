# EasyZip

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/easy_zip`. To experiment with that code, run `bin/console` for an interactive prompt.

This gem is easy to compress and decompress the file using gzip.
Use zlib lib.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_zip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_zip

## Usage

```ruby
# read lines from gzip.
EasyZip::Gzip.read_lines('read gzip filepath')
# write value to gzip.
EasyZip::Gzip.write_lines('write gzip filepath', 'write value')
# write lines to gzip.
EasyZip::Gzip.write_lines('write gzip filepath', ['first', 'second', 'third'])
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/koyupi/easy_zip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

