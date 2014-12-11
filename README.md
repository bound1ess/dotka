# Dota 2 Web API Wrapper

Not much to say here, let's get to work.

## Installation

Via **console**:
```shell
gem install dotka
```

Via **Gemfile**:
```ruby
source "https://rubygems.org"

gem "dotka", "~> 1.0.4"
```

## Example of usage

```ruby
require "dotka"

dotka = Dotka.new
dotka.set_api_key "Your API key - you can get it here: steamcommunity.com/dev/apikey"

match = dotka.match "Match ID as integer, for example 1077285418"

puts "First Radiant player has #{match.players.first.last_hits} last hits."
puts "He plays #{match.players.first.hero.localized_name}."

puts match.winner.capitalize + " team has won this match."
puts "It was played on #{match.region.localized_name}."
```

I suggest you to read the `docs/todo.md` file to understand what this gem is capable of.

## License information

This project is licensed under the MIT license (see the `LICENSE` file).
