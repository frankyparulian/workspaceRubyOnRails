class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(name: params[:name]) #sessions[:user_id]
  	#if user and user_auth
  	
  	#byebug
  	if user# and user.authenticate(params[:pasword])
  		user_auth =  user.authenticate(params[:pasword])
  		if  user_auth
  			session[:user_id] ||= []
    		session[:user_id] << user.id
  			#sessions[:user_id] = user.id
  			redirect_to admin_url
  		else
  			redirect_to login_url, alert:"Invalid Password or Username"
  		end
  	else
  		redirect_to login_url, alert:"Invalid Password or Username"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url,  alert:"Succesfully logout"
  end
end
