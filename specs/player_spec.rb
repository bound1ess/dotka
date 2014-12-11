require_relative "../src/dotka/player"

RSpec.describe DotkaM::Player do
	
	before :all do
		@player = DotkaM::Player.new({
			"account_id" => "123456789",
			"hero_id" => "1",
			"item_0" => "1",
			"item_1" => "1",
			"item_2" => "1",
			"item_3" => "1",
			"item_4" => "1",
			"item_5" => "1",
			"kills" => "20",
			"deaths" => "0",
			"assists" => "30",
			"leaver_status" => "1",
			"player_slot" => "5",
			"gold_spent" => "2000",
			"gold" => "1000",
			"last_hits" => "500",
			"denies" => "100",
			"gold_per_min" => "800",
			"xp_per_min" => "700", 					
			"hero_damage" => "10000",
			"tower_damage" => "1000",
			"hero_healing" => "3000",
			"level" => "25"
		}) 
	end

	it "provides data getters" do
		expect(@player.account_id).to eq(123456789)
		expect(@player.hero.localized_name).to eq("Anti-Mage")	
		expect(@player.items.first.localized_name).to eq("Blink Dagger")	
		expect(@player.kills).to eq(20)
		expect(@player.deaths).to eq(0)
		expect(@player.assists).to eq(30)
		expect(@player.abandoned?).to be_truthy
		expect(@player.team).to eq("dire")
		expect(@player.gold).to eq(3000)
		expect(@player.last_hits).to eq(500)
		expect(@player.denies).to eq(100)
		expect(@player.gold_per_min).to eq(800)
		expect(@player.xp_per_min).to eq(700)	
		expect(@player.hero_dmg).to eq(10000)
		expect(@player.tower_dmg).to eq(1000)
		expect(@player.hero_heal).to eq(3000)
		expect(@player.level).to eq(25)
	end

end
