require_relative "../src/dotka"
require_relative "../src/dotka/match"
require "rest-client"

RSpec.describe Dotka do

	before :all do
		@dotka = Dotka.new
	end

	it "sets the API key" do
		@dotka.set_api_key "some-key"
		expect(@dotka.get_api_key).to eq("some-key")
	end
	
	it "loads a match" do
		allow(RestClient).to receive("get") {
			FakeResponse.new(200, '{"result": {"match_id": 123456789}}')
		}
		expect(match = @dotka.match(123456789)).to be_instance_of(DotkaM::Match)
		expect(match.id).to eq(123456789)
	end

end

class FakeResponse
	attr_reader "code", "to_str" 
	def initialize code, body
		@code, @to_str = code, body
	end
end
