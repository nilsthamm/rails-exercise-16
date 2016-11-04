require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #new" do
    it "renders page" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #show" do
    it "renders page" do
			@alan_turing= Author.create(first_name: 'Alan', last_name: 'Turing')
      get :show, id: Author.find(@alan_turing).id
      expect(response).to render_template("show")
    end
  end

end
