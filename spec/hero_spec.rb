require_relative "../lib/dotka/hero"

RSpec.describe DotkaM::Hero do

	before :all do
		@hero = DotkaM::Hero.new({
			"id" => "1",
			"name" => "antimage",
			"localized_name" => "Anti-Mage"
		})
	end

	it "provides data getters" do
		expect(@hero.id).to eq(1)
		expect(@hero.name).to eq("antimage")
		expect(@hero.localized_name).to eq("Anti-Mage")
	end

end
