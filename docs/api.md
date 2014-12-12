# API

*Remember that `Dotka` here is not a class, but an instance of it 
(static methods are not in use).*

- `Dotka.set_api_key(key)`
- `key = Dotka.get_api_key`

- `match = Dotka.match(id)`:
	- `match.id` returns an `integer`.
	- `match.players` returns an `array` of `DotkaM::Player` instances.
	- `match.winner` returns either `radiant` or `dire` (`string`).
	- `match.duration` returns the match duration in seconds (`integer`).
	- `match.start_time` returns the start time in seconds (`integer`, UTC).
	- `match.lobby` returns an instance of `DotkaM::Lobby`.
	- `match.game_mode` returns an instance of `DotkaM::GameMode`.
	- `match.region` returns an instance of `DotkaM::Region`.
	- *This method will return an instance of `DotkaM::Match`.*

- `matches = Dotka.matches(conditions)` where `conditions` is an `array` with these keys:
	- `player_name` as a `string`.
	- `hero_id` as an `integer`.
	- `skill` as an `integer`: (0, 1, 2, 3) => (Any, Normal, High, Very High).
	- `date_min` as an `integer` (UTC).
	- `date_max` as an `integer` (UTC).
	- `account_id` as an `integer` (for example, `70388657`).
	- `start_at_match_id` as an `integer`.
	- `matches_requested` as an `integer`.
	- *This method will return an `array` of `DotkaM::Match` instances.*

- `player = Dotka.match(id).players[index]`:
	- `player.account_id` returns an `integer`.
	- `player.hero` returns an instance of `DotkaM::Hero`.
	- `player.items` returns an `array` of `DotkaM::Item` instances.
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
	- *This method will return an instance of `DotkaM::Player`.*

- `hero = Dotka.match(id).players[index].hero`:
	- `hero.id` returns an `integer`.
	- `hero.name` returns a `string` (internal hero name).
	- `hero.localized_name` returns a `string` (localized hero name in English).
	- *This method will return an instance of `DotkaM::Hero`.*

- `item = Dotka.match(id).players[index].items[index]`:
	- `item.id` returns an `integer`.
	- `item.name` returns a `string` (internal item name).
	- `item.localized_name` returns a `string` (localized item name in English).
	- *This method will return an instance of `DotkaM::Item`.*

- `game_mode = Dotka.match(id).game_mode`:
	- `game_mode.id` returns an `integer`.
	- `game_mode.localized_name` returns a `string` (localized game mode name in English).
	- *This method will return an instance of `DotkaM::GameMode`.*

- `lobby = Dotka.match(id).lobby`:
	- `lobby.id` returns an `integer`.
	- `lobby.localized_name` returns a `string` (localized lobby name in English).
	- *This method will return an instance of `DotkaM::Lobby`.*

- `region = Dotka.match(id).region`:
	- `region.id` returns an `integer`.
	- `region.localized_name` returns a `string` (localized region name in English).
	- *This method will return an instance of `DotkaM::Region`.*

