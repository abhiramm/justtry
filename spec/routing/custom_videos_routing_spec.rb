require "spec_helper"

describe CustomVideosController do
  describe "routing" do

    it "routes to #index" do
      get("/custom_videos").should route_to("custom_videos#index")
    end

    it "routes to #new" do
      get("/custom_videos/new").should route_to("custom_videos#new")
    end

    it "routes to #show" do
      get("/custom_videos/1").should route_to("custom_videos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/custom_videos/1/edit").should route_to("custom_videos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/custom_videos").should route_to("custom_videos#create")
    end

    it "routes to #update" do
      put("/custom_videos/1").should route_to("custom_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/custom_videos/1").should route_to("custom_videos#destroy", :id => "1")
    end

  end
end
