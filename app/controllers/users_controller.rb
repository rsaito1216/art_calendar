class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.valid?
        @user.save
        redirect_to action: :index
      else
        render action: :new
      end
  end

  def show
    def show
      user = User.find(params[:id])
      @nickname = current_user.nickname
      @events = user.events
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :encripted_password) 
  end
end
