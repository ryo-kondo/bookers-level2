class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find_by(id: params[:id])
    return redirect_to user_path(@user) if current_user.id != @user.id
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = 'You have updated user successfully.'
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
    end
end
