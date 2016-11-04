require 'rails_helper'

RSpec.describe PapersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to render_template("new")
    end
  end

end
