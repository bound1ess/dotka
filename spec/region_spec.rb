require_relative "../lib/dotka/region"

RSpec.describe DotkaM::Region do

	before :all do

		@region = DotkaM::Region.new({
			"id" => "111",
			"name" => "US West"
		})

	end
		
	it "provides data getters" do

		expect(@region.id).to eq(111)
		expect(@region.localized_name).to eq("US West")

	end
	
end
