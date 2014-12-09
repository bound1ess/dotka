require_relative "../src/dotka"

RSpec.describe Dotka do

	before :each do
		@dotka = Dotka.new
	end

	it "sets the API key" do
		@dotka.set_api_key "some-key"
		expect(@dotka.get_api_key).to eq("some-key")
	end

end
