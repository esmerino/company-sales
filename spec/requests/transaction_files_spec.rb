require 'rails_helper'

RSpec.describe "TransactionFiles", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/transaction_files/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/transaction_files/create"
      expect(response).to have_http_status(:success)
    end
  end

end
