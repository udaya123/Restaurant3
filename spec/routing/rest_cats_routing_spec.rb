require "rails_helper"

RSpec.describe RestCatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rest_cats").to route_to("rest_cats#index")
    end

    it "routes to #new" do
      expect(:get => "/rest_cats/new").to route_to("rest_cats#new")
    end

    it "routes to #show" do
      expect(:get => "/rest_cats/1").to route_to("rest_cats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rest_cats/1/edit").to route_to("rest_cats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rest_cats").to route_to("rest_cats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rest_cats/1").to route_to("rest_cats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rest_cats/1").to route_to("rest_cats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rest_cats/1").to route_to("rest_cats#destroy", :id => "1")
    end

  end
end
