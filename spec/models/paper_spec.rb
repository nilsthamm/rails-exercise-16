require 'rails_helper'

RSpec.describe Paper, type: :model do
	describe "validation" do
		it "paper without title shouldn't be valid" do
			Paper.new(:venue => "mind 49: 433-460", :year => 1950).should_not be_valid
		end

		it "paper without title shouldn't be valid" do
			Paper.new(:title => "computing machinery and intelligence", :year => 1950).should_not be_valid
		end

		it "paper without year shouldn't be valid" do
			Paper.new(:title => "computing machinery and intelligence", :venue => "mind 49: 433-460").should_not be_valid
		end

		it "paper with non-integer year shouldn't be valid" do
			Paper.new(:title => "computing machinery and intelligence", :venue => "mind 49: 433-460", :year => "nineteen-fifty").should_not be_valid
		end
	end

	describe "methode authors" do
		it "should return list of authors" do
			@computing = create(:paper)
			expect(@computing.authors).to eq Array.new()
		end
	end
end
