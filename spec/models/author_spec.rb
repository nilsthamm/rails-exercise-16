require 'rails_helper'

RSpec.describe Author, type: :model do
	before :each do #do this before each test
		@alan_turing= create(:author)
	end

	describe "methode name" do
		it "should return 'first_name last_name' of the author" do
			expect(@alan_turing.name).to eq "Alan Turing"
		end
	end
end
