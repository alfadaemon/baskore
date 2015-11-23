require "rails_helper"

RSpec.describe GameLogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_logs").to route_to("game_logs#index")
    end

    it "routes to #new" do
      expect(:get => "/game_logs/new").to route_to("game_logs#new")
    end

    it "routes to #show" do
      expect(:get => "/game_logs/1").to route_to("game_logs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/game_logs/1/edit").to route_to("game_logs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/game_logs").to route_to("game_logs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/game_logs/1").to route_to("game_logs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/game_logs/1").to route_to("game_logs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_logs/1").to route_to("game_logs#destroy", :id => "1")
    end

  end
end
