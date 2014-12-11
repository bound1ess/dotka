require_relative "../lib/dotka/game_mode"

RSpec.describe DotkaM::GameMode do

	before :all do
		@game_mode = DotkaM::GameMode.new({
			"id" => "1",
			"name" => "All Pick"
		})
	end

	it "provides data getters" do
		expect(@game_mode.id).to eq(1)
		expect(@game_mode.localized_name).to eq("All Pick")
	end
		
end
