require_relative "raw"
require_relative "player"
require_relative "lobby"
require_relative "game_mode"
require_relative "region"
require_relative "storage"

module DotkaM
	class Match < Raw
		def id
			@raw["match_id"].to_i
		end
		def players
			players = Array.new
			@raw["players"].each { |player|
				players.push Player.new(player)
			}
			players
		end
		def winner
			(!! @raw["radiant_win"]) ? "radiant" : "dire"
		end
		def duration
			@raw["duration"].to_i
		end
		def start_time
			@raw["start_time"].to_i
		end
		def lobby
			Lobby.new Storage.new.get("lobbies", {"id" => @raw["lobby_type"]}) 
		end
		def game_mode
			GameMode.new Storage.new.get("game_modes", {"id" => @raw["game_mode"]})
		end
		def region
			Region.new Storage.new.get("regions", {"id" => @raw["cluster"]})
		end
	end
end
