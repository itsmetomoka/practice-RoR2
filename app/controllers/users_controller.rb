class UsersController < ApplicationController
  def show
  	@book = Book.new
  	@user = User.find(params[:id])
  end

  def index
  end

  def edit
  	@user = User.find(params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:name, :intriduction, :profile_image)
  end
end
