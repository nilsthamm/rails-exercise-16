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

describe "Authors#show page", :type => :feature do

  it "should show the authors details" do
    @alan_turing= Author.create(first_name: 'Alan', last_name: 'Turing', homepage:"http://wikipedia.de/alan_turing")
    visit authors_path + "/#{Author.find(@alan_turing).id}"

    expect(page).to have_text 'First name: Alan'
    expect(page).to have_text 'Last name: Turing'
    expect(page).to have_text 'Homepage: http://wikipedia.de/alan_turing'

  end
end

describe "Authors#index page", :type => :feature do
  
  it "should create an instance of the given author" do
    @alan_turing= Author.create(first_name: 'Alan', last_name: 'Turing', homepage:"http://wikipedia.de/alan_turing")
    visit authors_path
    
    expect(page).to have_text 'Alan'
  end
end
