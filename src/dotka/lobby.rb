require_relative "raw"

module DotkaM
	class Lobby < Raw
		def id
			@raw["id"].to_i
		end
		def localized_name
			@raw["name"]
		end
	end
end
