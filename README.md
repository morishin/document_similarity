# DocumentSimilarity

[![Build Status](https://travis-ci.com/morishin/document_similarity.svg?branch=master)](https://travis-ci.com/morishin/document_similarity)

Calculate cosine similarity between given 2 sentence strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'document_similarity'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install document_similarity

## Usage

```ruby
require 'document_similarity'

DocumentSimilarity.similarity("AAA BBB CCC", "AAA BBB CCC")
# => 1.0

DocumentSimilarity.similarity("AAA BBB CCC", "AAA BBB DDD")
# => 0.6666666666666666

DocumentSimilarity.similarity("AAA BBB CCC", " DDD EEE FFF")
# => 0.0

DocumentSimilarity.similarity("AAA BBB CCC", "aaa bbb ccc")
# => 1.0
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/morishin/document_similarity.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
