class UsersController < ApplicationController
  def new
     @user = User.new(user_params)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
        flash[:notice] = "You signed up successfully"
        flash[:color] = "valid"
    else
        flash[:notice] = "Form is invalid"
        flash[:color] = "invalid"
    end
    render "new"
  end

  def user_params
    byebug
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end
