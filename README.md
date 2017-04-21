# EpicAnagram

This gem provides methods to determine anagrams for words. It uses `/usr/share/dict/words` to find words and will likely blow up messily if it does not exist. This is a student project for the Epicodus Ruby course and should probably not be used. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'epic_anagram'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install epic_anagram

## Usage

The provided module can either be used as-is or mixed into a String-based class.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tenebrousedge/epic_anagram.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

