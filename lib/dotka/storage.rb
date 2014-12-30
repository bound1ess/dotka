require "json"

module DotkaM

	class Storage

		def get file, conditions = {}

			rows = JSON.parse File.read("#{__dir__}/../../data/#{file}.json")

			if not conditions.empty?

				rows.select! { |row|
					selected = true

					conditions.each { |key, value|
						if not (row.has_key? key) or not (row[key] == value.to_s)
							selected = false
						end
					}

					selected
				}

			end

			rows.length == 1 ? rows.first : rows

		end

	end

end
