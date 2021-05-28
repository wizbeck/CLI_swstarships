# SWstarships
Thanks for checking out my swstarships gem!

This cli app retrieves specific data about the starships in the Star Wars movies from [Starwars API](https://swapi.dev/api/starships/) and displays it for the user when they choose a starship from the list. Each starship in the class array has basic datapoints/stats that the user can learn about. 

This app targets users who are Star Wars enthusiasts that are interested in learning basic information about the starships that exist in the Star Wars universe.

With minimal user input, the user can see all the starships and their data from the Star Wars API database, and select a certain starship to display its indivdual characteristics currently available.

Made with Ruby Object Oriented Programming Priniciples (OOP)

## Installation
(I have not deployed this CLI app as a gem yet, so for now move on to the next section. I will be updating very soon)
Add this line to your application's Gemfile:

```ruby
gem 'swstarships'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install swstarships

## Usage

- After the gem starts up, it will load the information in and list all the starships.
- Once the list of starships are displayed, it will request an input from the user.
- The only inputs that are available are the numbers which correspond to each starship, or the built-in commands, "help", "menu", "contact", and "exit" or "quit".
- If the user enters a valid input, it will display the data on the specific starship instance that was called on and display that data for the user to the terminal.
- If the user enters an invalid input, it will prompt the user to try another input or 'exit' to exit the app.
- Anytime an input is requested, you can exit the program at any point during its runtime with 'exit'.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub [here](https://github.com/wizbeck21/swstarships). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/swstarships/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Swstarships project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/swstarships/blob/master/CODE_OF_CONDUCT.md).
