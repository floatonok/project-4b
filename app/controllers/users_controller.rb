class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :set_current_user, :authenticate_request, only: :create

  # GET /users
  def index

    if params[:me].present?
      @users = User.find(@current_user.id)
    else
      @users = User.all
    end
    render json: @users

    # @users = User.all
    # render json: @users

  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    # @user = User.new(user_params)
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)

      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :home_id)
    end
end
