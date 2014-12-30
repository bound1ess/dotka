require_relative "../lib/dotka/match"
require_relative "../lib/dotka"

RSpec.describe DotkaM::Match do

	before :all do

		@match = DotkaM::Match.new({
			"match_id" => "123456789",
			"players" => [
				{"account_id" => "1"}
			],		
			"radiant_win" => true,
			"duration" => "3600",
			"start_time" => "123456789",
			"lobby_type" => "0",
			"game_mode" => "1",
			"cluster" => "111"
		})	

	end
	
	it "provides data getters" do

		expect(@match.id).to eq(123456789)
		expect(@match.players.first.account_id).to eq(1)
		expect(@match.player(1).account_id).to eq(1) 
		expect(@match.winner).to eq("radiant")
		expect(@match.duration).to eq(3600)
		expect(@match.start_time).to eq(123456789)
		expect(@match.lobby.localized_name).to eq("Public matchmaking")
		expect(@match.game_mode.localized_name).to eq("All Pick")
		expect(@match.region.localized_name).to eq("US West")

	end
	
	it "provides an API limitation workaround" do

		dotka = Dotka.new

		allow(dotka).to receive("match")
					.with(123456789)
					.and_return DotkaM::Match.new({"players" => [{"account_id" => 1234}]})

		@match.load_info dotka

		expect(@match.players.first.account_id).to eq(1234)

	end

end
