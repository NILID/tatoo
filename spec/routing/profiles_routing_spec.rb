require "rails_helper"

RSpec.describe ProfilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/profiles").to route_to("profiles#index")
    end

    it "routes to #edit" do
      expect(:get => "/profiles/1/edit").to route_to("profiles#edit", :id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/profiles/1").to route_to("profiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/profiles/1").to route_to("profiles#update", :id => "1")
    end
  end
end
