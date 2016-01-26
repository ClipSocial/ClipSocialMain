class MessagesController < ApplicationController

	def create
		@sponsor = Sponsor.find(params[:sponsor_id])
		@message = @sponsor.messages.create!(message_params)
		@message.update_attributes(email_mensagem: current_user.email)
	end

	private

		def message_params
			params.require(:message).permit(:message, :email_mensagem)
		end
end
