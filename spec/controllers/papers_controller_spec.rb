require 'rails_helper'

RSpec.describe PapersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #show" do
    it "renders page" do
			@computing= create(:paper)
      get :show, id: @computing.id
      expect(response).to render_template("show")
    end
  end

end
