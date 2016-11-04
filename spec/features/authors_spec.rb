require 'rails_helper'

describe "Authors#new page", :type => :feature do
  
  it "should create an instance of the given author" do
    visit new_author_path
    fill_in "First name", with: "Alan"
    fill_in "Last name", with: "Turing"
    fill_in "Homepage", with: "http://wikipedia.org/Alan_Turing"
    click_button("Create Author")

    expect(Author.where(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")).to exist
  end
end