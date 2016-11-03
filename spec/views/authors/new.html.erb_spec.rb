# require 'rails_helper'

describe "authors/new" do
	it "displays fields for first name, last name and homepage" do
		render :template => "authors/new.html.erb"

		expect(rendered).to match /first_name/
		expect(rendered).to match /last_name/
		expect(rendered).to match /homepage/
	end
end
