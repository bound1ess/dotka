require_relative "../src/dotka/item"

RSpec.describe DotkaM::Item do

	before :all do
		@item = DotkaM::Item.new({
			"id" => "1",
			"name" => "blink",
			"localized_name" => "Blink Dagger"
		})
	end

	it "provides data getters" do
		expect(@item.id).to eq("1")
		expect(@item.name).to eq("blink")
		expect(@item.localized_name).to eq("Blink Dagger")
	end

end
