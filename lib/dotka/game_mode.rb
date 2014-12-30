require_relative "raw"

module DotkaM

	class GameMode < Raw

		def id
			@raw["id"].to_i
		end

		def localized_name
			@raw["name"]
		end

	end

end
