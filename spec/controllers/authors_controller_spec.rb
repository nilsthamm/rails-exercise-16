require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #new" do
    it "renders page" do
      get :new
      expect(response).to render_template("new")
    end
  end

end
