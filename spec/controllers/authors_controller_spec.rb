require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #new" do
    it "renders page" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #edit" do
    it "renders page" do
      get :edit
      expect(response).to render_template("edit")
    end
  end

  describe "GET #index" do
    it "renders page" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "renders page" do
			@alan_turing= create(:author)
      get :show, id: @alan_turing.id
      expect(response).to render_template("show")
    end
  end

end
