require "rails_helper"

RSpec.describe SectionGridsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/section_grids").to route_to("section_grids#index")
    end

    it "routes to #new" do
      expect(:get => "/section_grids/new").to route_to("section_grids#new")
    end

    it "routes to #show" do
      expect(:get => "/section_grids/1").to route_to("section_grids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/section_grids/1/edit").to route_to("section_grids#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/section_grids").to route_to("section_grids#create")
    end

    it "routes to #update" do
      expect(:put => "/section_grids/1").to route_to("section_grids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/section_grids/1").to route_to("section_grids#destroy", :id => "1")
    end

  end
end
