# UT Rubocop-Rails

This gem extends [ut-rubocop](https://github.com/usertesting/ut_rubocop) to add Rails specific cops.

## Installation

Add the gem to your `Gemfile` in the dev/test group:

You don't need to add `rubocop` itself, this takes care of that.

```ruby
group :test, :development do
  ...
  gem "ut-rubocop",       require: false
  gem "ut-rubocop-rails", require: false
```

In your `.rubocop.yml` file, add these lines near the top:

```yaml
inherit_gem:
  ut-rubocop:
    - default.yml
inherit_gem:
  ut-rubocop-rails:
    - default.yml
```

## Usage

`bundle exec rubocop`

## License

[MIT](LICENSE).

Library created by [UserTesting](https://usertesting.com)

![UserTesting](doc/UserTesting.png)

## Contributing

1. Fork it ( https://github.com/usertesting/ut_rubocop_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
