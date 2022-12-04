class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end

  def show
    user = User.find_by(params[:id])
    render json: user
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end



  private
  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end
end
