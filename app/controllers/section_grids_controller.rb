class SectionGridsController < ApplicationController
  before_action :set_section_grid, only: [:show, :update, :destroy]

  # GET /section_grids
  def index
    @section_grids = SectionGrid.all

    render json: @section_grids
  end

  # GET /section_grids/1
  def show
    render json: @section_grid
  end

  # POST /section_grids
  def create
    @section_grid = SectionGrid.new(section_grid_params)

    if @section_grid.save
      render json: @section_grid, status: :created, location: @section_grid
    else
      render json: @section_grid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /section_grids/1
  def update
    if @section_grid.update(section_grid_params)
      render json: @section_grid
    else
      render json: @section_grid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /section_grids/1
  def destroy
    @section_grid.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_grid
      @section_grid = SectionGrid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def section_grid_params
      params.require(:section_grid).permit(:occupied, :home_id)
    end
end
