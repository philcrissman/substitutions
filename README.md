# Substitutions

Based on the fine _SUBSTITUTIONS_ comics from [xkcd](http://xkcd.com):

![SUBSTITUTIONS](http://imgs.xkcd.com/comics/substitutions.png)

![SUBSTITUTIONS2](http://imgs.xkcd.com/comics/substitutions_2.png)

![SUBSTITUTIONS3](http://imgs.xkcd.com/comics/substitutions_3.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'substitutions'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install substitutions

## Usage

You create a new instance of `Substitutions::Text`, supplying the text you'd like to modify; then call `substitute` on the object.

```
sub = Substitutions::Text.new("Underwater 'lost city' is a natural phenomenon, say scientists")

sub.substitute #=> "Underwater 'lost city' is a natural phenomenon, say Channing Tatum and his friends"
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/substitutions. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

