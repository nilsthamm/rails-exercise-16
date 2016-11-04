require 'rails_helper'

describe "authors/index" do
	before :each do
    create(:author)
  end

	it "has a link to authors/new" do
		assign(:authors, Author.all)
		render :template => "authors/index.html.erb"

		expect(rendered).to have_selector 'a', :text => 'Add author'
	end

	it "has a link to an authors page" do
		assign(:authors, Author.all)
		render :template => "authors/index.html.erb"

		expect(rendered).to have_selector 'a', :text => 'Show'
	end

	it "has a link to an authors edit page" do
		assign(:authors, Author.all)
		render :template => "authors/index.html.erb"

		expect(rendered).to have_selector 'a', :text => 'Edit'
	end
end