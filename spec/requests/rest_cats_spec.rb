require 'rails_helper'

RSpec.describe "RestCats", type: :request do
  describe "GET /rest_cats" do
    it "works! (now write some real specs)" do
      get rest_cats_path
      expect(response).to have_http_status(200)
    end
  end
end
