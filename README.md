# Dota 2 Web API

I will post some information soon.

## TODO

- `match = Dotka.match(id)`:
	- `match.id` returns an `integer`.
	- `match.players` returns an `array` of `Dotka::Player` instances.
	- `match.winner` returns either `radiant` or `dire`.
	- `match.duration` returns the match duration in seconds.
	- `match.start_time` returns the start time (`UTC`).
	- `match.lobby` returns an instance of `Dotka::Lobby`.
	- `match.game_mode` returns an instance of `Dotka::GameMode`.
	- `match.region` returns an instance of `Dotka::Region`.
	- *Where `match` is an instance of `Dotka::Match`.*

- `Dotka.matches(conditions)` where `conditions` is an `array` with these keys:
	- `player_name` as a `string`.
	- `hero_id` as an `integer`.
	- `skill_type` as an `integer`: (0, 1, 2) => (Normal, High, Very High).
	- `min_date` as an `integer` (UTC).
	- `max_date` as an `integer` (UTC).
	- `account_id` as an `integer` (for example, `70388657`).
	- `start_at_match_id` as an `integer`.
	- `amount_of_matches` as an `integer`.
	- *This method will return an `array` of `Dotka::Match` instances.*

- `player = Dotka.player(id)`:
	- `player.account_id` returns an `integer`.
	- `player.hero` returns an instance of `Dotka::Hero`.
	- `player.items` returns an `array` of `Dotka::Item` instances.
	- `player.kills` returns an `integer`.
	- `player.deaths` returns an `integer`.
	- `player.assists` returns an `integer`.
	- `player.abandoned?` returns a `boolean`.
	- `player.team` returns either `dire` or `radiant`.
	- `player.gold` returns an `integer`.
	- `player.last_hits` returns an `integer`.
	- `player.denies` returns an `integer`.
	- `player.gold_per_min` returns an `integer`.
	- `player.xp_per_min` returns an `integer`.
	- `player.hero_dmg` returns an `integer`.
	- `player.tower_dmg` returns an `integer`.
	- `player.hero_heal` returns an `integer`.
	- `player.level` returns an `integer`.
	- *This method will return an instance of `Dotka::Player`.*

## License information

This project is licensed under the MIT license (see `LICENSE` file).
