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

	describe "validation" do
		it "author without lastname shouldn't be valid" do
			Author.new(:first_name => "Carl", :homepage => "carl.cl").should_not be_valid
		end
	end

	describe "methode papers" do
		it "should return list of papers" do
			expect(@alan_turing.papers).to eq Array.new()
		end
	end
end
