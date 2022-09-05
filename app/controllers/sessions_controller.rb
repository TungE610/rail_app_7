class SessionsController < ApplicationController
	def new
	end
	def destroy 
		session[:user_id] = nil
		flash[:notice] = "Logged out"
		redirect_to root_path
	end
	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenicate(params[:session][:password])
			sesson[:user_id] = user.id
			flash[:notice] = "Logged in successfully"
			redirect_to user
		else
			flash.now[:notice] = "There was something wrong with your login detail session"
			render 'now'
		end
	end

end