require 'rails_helper'

RSpec.describe SecureFilesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "requires some params" do
      expect{
        post :create
      }.to raise_error(ActionController::ParameterMissing)
    end
  end

end
