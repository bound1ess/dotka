require_relative "../lib/dotka/storage"

RSpec.describe DotkaM::Storage do

	before :all do
		@storage = DotkaM::Storage.new
	end

	it "returns the entire file contents" do
		items = @storage.get "items"
		expect(items).to be_truthy
		expect(items).to be_an(Array)
	end

	it "returns a single row" do
		item = @storage.get "items", {"id" => 1}
		expect(item).to eq({
			"id" => "1",
			"name" => "blink",
			"localized_name" => "Blink Dagger"
		})	
	end
	
end
