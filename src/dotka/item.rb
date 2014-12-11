require_relative "raw"

module DotkaM
	class Item < Raw
		def id
			@raw["id"]
		end
		def name
			@raw["name"]
		end
		def localized_name
			@raw["localized_name"]
		end
	end
end
