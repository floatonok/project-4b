class CellsController < ApplicationController
  before_action :set_cell, only: [:show, :update, :destroy]

  # GET /cells
  def index
    @cells = Cell.all

    render json: @cells.order('id asc')
  end

  # GET /cells/1
  def show
    render json: @cell
  end

  # POST /cells
  def create
    @cell = Cell.new(cell_params)

    if @cell.save
      render json: @cell, status: :created, location: @cell
    else
      render json: @cell.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cells/1
  def update
    if @cell.update(cell_params)
      # When home is added to cell, @home.size = @home.cells.length
      @cell.home_id = @current_user.home_id
      home = @cell.home
      if home
        @cell.occupied = true
        home.size = home.cells.length
        home.save
        @cell.save
      end

      render json: @cell
    else
      render json: @cell.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cells/1
  def destroy
    @cell.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cell
      @cell = Cell.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cell_params
      params.require(:cell).permit(:occupied, :home_id, :section_id)
    end
end
