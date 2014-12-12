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

match = dotka.match "Match ID as an integer, for example 1077285418"

puts "First Radiant player had #{match.players.first.last_hits} last hits."
puts "He played #{match.players.first.hero.localized_name}."

puts match.winner.capitalize + " team has won this match."
puts "It was played on #{match.region.localized_name}."

matches = dotka.matches("Account ID as an integer, for example 70388657", {
	"matches_requested" => 5, 
})
 
puts "First match ID fetched: #{matches.first.id}."
puts "It was played in #{matches.first.lobby.localized_name}."
puts "And the game mode was #{matches.first.game_mode.localized_name}."
```

I suggest you to read the `docs/api.md` file to understand what this gem is capable of.

## License information

This project is licensed under the MIT license (see the `LICENSE` file).
