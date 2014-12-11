require_relative "raw"

module DotkaM
	class Region < Raw
		def id
			@raw["id"]
		end
		def name
			@raw["name"]
		end
	end
end
