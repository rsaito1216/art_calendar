class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(user_params)
      if @user.save
        
        @mail = UserMailer.send_mail(@user)
        @mail.deliver
     
        redirect_to root_path
      else
        render 'new'
      end
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
