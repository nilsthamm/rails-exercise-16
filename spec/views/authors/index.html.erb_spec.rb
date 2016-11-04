require 'rails_helper'

describe "authors/index" do
	it "has a link to authors/new" do
		assign(:authors, Author.all)
		render :template => "authors/index.html.erb"

		expect(rendered).to have_selector 'a', :text => 'Add author'
	end
end