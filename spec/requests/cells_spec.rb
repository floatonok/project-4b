require 'rails_helper'

RSpec.describe "Cells", :type => :request do
  describe "GET /cells" do
    it "works! (now write some real specs)" do
      get cells_path
      expect(response).to have_http_status(200)
    end
  end
end
