class SessionsController < ApplicationController

	skip_before_action :ensure_login, only: [:new, :create]

	def new
		
	end

	def create

		user = User.find_by(email: params[:user][:email])
		password = params[:user][:password]

		if user && user.authenticate(password)
			session[:user_id] = user.id
			redirect_to perfil_path
		else
			redirect_to login_path, alert: 'Email ou Senha incorreto'
		end

	end

	def destroy
		reset_session
		redirect_to root_path
	end
	
end
