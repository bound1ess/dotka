require_relative "../lib/dotka/lobby"

RSpec.describe DotkaM::Lobby do
	
	before :all do
		@lobby = DotkaM::Lobby.new({
			"id" => "0",
			"name" => "Public matchmaking"
		})
	end

	it "provides data getters" do
		expect(@lobby.id).to eq(0)
		expect(@lobby.localized_name).to eq("Public matchmaking")
	end
	
end
