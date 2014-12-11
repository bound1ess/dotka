require_relative "raw"

module DotkaM
	class Lobby < Raw
		def id
			@raw["id"]
		end
		def name
			@raw["name"]
		end
	end
end
