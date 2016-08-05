require 'rails_helper'

RSpec.describe "SectionGrids", :type => :request do
  describe "GET /section_grids" do
    it "works! (now write some real specs)" do
      get section_grids_path
      expect(response).to have_http_status(200)
    end
  end
end
