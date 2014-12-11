require "rest-client"
require_relative "dotka/match"
require "json"

class Dotka	
	def initialize
		@key = nil
	end
	def set_api_key key
		@key = key
	end
	def get_api_key
		@key
	end
	def match id
		raise "Please set up the API key!" unless not @key.nil?
		response = RestClient.get(
			"https://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/V001",
			{"params" => {"key" => @key, "match_id" => id}}
		)
		raise "Can not load a match with ID #{id}." unless response.code == 200
		DotkaM::Match.new(JSON.parse(response.to_str)["result"])
	end
	def matches account_id
		raise "Please set up the API key!" unless not @key.nil?
		response = RestClient.get(
			"https://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001",
			{"params" => {"key" => @key, "account_id" => account_id}}
		)
		raise "Can not load matches for account ID #{account_id}." unless response.code == 200
		matches = Array.new
		JSON.parse(response.to_str)["result"]["matches"].each { |match|
			matches.push DotkaM::Match.new(match)
		}	
		matches
	end
end
