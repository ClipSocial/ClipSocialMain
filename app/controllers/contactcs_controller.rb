class ContactcsController < ApplicationController

	skip_before_action :ensure_login, only: [:new, :create]

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = "Aconteceu um erro. Tente novamente mais tarde"
			render :new
		end
	end


end
