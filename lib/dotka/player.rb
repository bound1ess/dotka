require_relative "raw"
require_relative "storage"
require_relative "hero"
require_relative "item"

module DotkaM
	class Player < Raw
		def account_id
			@raw["account_id"].to_i
		end
		def hero
			Hero.new Storage.new.get("heroes", {"id" => @raw["hero_id"]})
		end
		def items
			storage = Storage.new
			[
				Item.new(storage.get "items", {"id" => @raw["item_0"]}),
				Item.new(storage.get "items", {"id" => @raw["item_1"]}),
				Item.new(storage.get "items", {"id" => @raw["item_2"]}),
				Item.new(storage.get "items", {"id" => @raw["item_3"]}),
				Item.new(storage.get "items", {"id" => @raw["item_4"]}),
				Item.new(storage.get "items", {"id" => @raw["item_5"]})
			]
		end
		def kills
			@raw["kills"].to_i
		end
		def deaths
			@raw["deaths"].to_i
		end
		def assists
			@raw["assists"].to_i
		end
		def abandoned?
			@raw["leaver_status"].to_i == 1
		end
		def team
			@raw["player_slot"].to_i > 4 ? "dire" : "radiant"
		end
		def gold
			@raw["gold"].to_i + @raw["gold_spent"].to_i
		end
		def last_hits
			@raw["last_hits"].to_i
		end
		def denies
			@raw["denies"].to_i
		end
		def gold_per_min
			@raw["gold_per_min"].to_i
		end
		def xp_per_min
			@raw["xp_per_min"].to_i
		end
		def hero_dmg
			@raw["hero_damage"].to_i
		end
		def tower_dmg
			@raw["tower_damage"].to_i
		end
		def hero_heal
			@raw["hero_healing"].to_i
		end
		def level
			@raw["level"].to_i
		end
	end
end
