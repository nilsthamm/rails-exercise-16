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

  it "should show the author's name" do
    @computing = create(:paper)
    @alan_turing = create(:author)
    @computing.authors.push(@alan_turing)
    visit papers_path + "/#{@computing.id}"

    expect(page).to have_text 'Title: ' + @computing.title
    expect(page).to have_text 'Venue: ' + @computing.venue
    expect(page).to have_text 'Year: 1950'
    expect(page).to have_text @alan_turing.name

  end
end

describe "Papers#edit page", :type => :feature do

  it "should show 5 dropdowns for authors" do
    @computing = create(:paper)
    visit papers_path + "/#{@computing.id}/edit"

    expect(page).to find_field 'author 1'
    expect(page).to find_field 'author 2'
    expect(page).to find_field 'author 3'
    expect(page).to find_field 'author 4'
    expect(page).to find_field 'author 5'

  end
end

describe "Papers#index page", :type => :feature do
  
  it "should display all papers" do
    @computing = create(:paper)
    visit papers_path
    
    expect(page).to have_text @computing.title
    expect(page).to have_text @computing.venue
    expect(page).to have_text "1950"
  end
end