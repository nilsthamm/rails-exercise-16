require 'rails_helper'

describe "authors/index" do
	it "has a link to authors/new" do
		assign(:authors, Author.all)
		render :template => "authors/index.html.erb"

		expect(rendered).to have_selector 'a', :text => 'Add author'
	end

	it "has a link to an authors page" do
    Author.create(first_name: 'Alan', last_name: 'Turing', homepage:"http://wikipedia.de/alan_turing")
		assign(:authors, Author.all)
		render :template => "authors/index.html.erb"

		expect(rendered).to have_selector 'a', :text => 'Show'
	end
end