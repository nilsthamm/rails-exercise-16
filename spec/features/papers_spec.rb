require 'rails_helper'

describe "Papers#new page", :type => :feature do
  
  it "should create an instance of the given paper" do
    visit new_paper_path
    fill_in "Title", with: "COMPUTING MACHINERY AND INTELLIGENCE"
    fill_in "Venue", with: "Mind 49: 433-460"
    fill_in "Year", with: "1950"
    click_button("Create Paper")

    expect(Paper.where(title:"COMPUTING MACHINERY AND INTELLIGENCE", venue:"Mind 49: 433-460", year:"1950")).to exist
  end
end

describe "Papers#show page", :type => :feature do

  it "should show the papers details" do
    @computing = create(:paper)
    visit papers_path + "/#{@computing.id}"

    expect(page).to have_text 'Title: ' + @computing.title
    expect(page).to have_text 'Venue: ' + @computing.venue
    expect(page).to have_text 'Year: 1950'

  end
end

describe "Papers#index page", :type => :feature do
  
  it "should display all papers" do
    @computing = create(:author)
    visit papers_path
    
    expect(page).to have_text @computing.title
    expect(page).to have_text @computing.venue
    expect(page).to have_text "1950"
  end
end