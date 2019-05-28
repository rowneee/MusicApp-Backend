class Api::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(userparams)
    render json: user
  end

  # def favorites
  #   favorites = User.find(params[:favorites])
  #   render json: user
  # end

  # def update
  # end
  # #
  # def update
  #    user = User.find(params[:id])
  #    user.update(favorites: params[:favorites])
  #    render json: user
  #  end

  # def delete
  # end

  private

  def userparams
    params.require(:user).permit(:name, :favorites)
  end
end
