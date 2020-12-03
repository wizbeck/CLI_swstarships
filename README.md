# Swstarships
Welcome to the SWstarships gem!

This application retrieves specific data about the starships in the Star Wars movies from Starwars API (https://swapi.dev/api/starships/) and displays it for the user when choose a starship from the database. Each starship in the database has basic datapoints that the user can learn about. 

This app targets users who are Star Wars enthusiasts that are interested in learning basic information about the starships that exist in the Star Wars universe.

With minimal user input, the user can see all the starships from the Star Wars API database, and select a certain starship to display its characteristics.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'swstarships'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install swstarships

## Usage

Instructions:

After the app starts up, it will load the information in and list all the starships.
After listing the starships, it will request an input from the user.
If the user enters a valid input, it will retrieve the data on the specific starship that was called on and display that data for the user.
If the user enters an invalid input, it will prompt the user to try another input or 'exit' to exit the app.
The only accepted inputs are 'menu', 'exit', and the integer/number that corresponds with the number assigned to the starship.
Anytime an input is requested, you can exit the program at any point during its runtime.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/swstarships. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/swstarships/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Swstarships project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/swstarships/blob/master/CODE_OF_CONDUCT.md).
