class SponsorsController < ApplicationController

	def create
		@sponsor = current_user.sponsors.create(sponsor_params)
		if @sponsor.save
			redirect_to user_sponsor_path(current_user, @sponsor)
		else
			rendirect_to perfil_path
		end
	end

	def show
		@sponsor = current_user.sponsors.find(params[:id])
		@pj = @sponsor.projetos.page(params[:page]).per(1)
		@p = @sponsor.project
		@messages = @sponsor.messages.order(:created_at)
	end

	def clipar
		@sponsor = current_user.sponsors.find(params[:sponsor_id])
		@p = Project.find(params[:id_do_projeto])
		@sponsor.project = @p
		if @sponsor.update_attributes(clipado?: true)
			redirect_to user_sponsor_path(current_user, @sponsor)
		else
			redirect_to user_sponsor_path(current_user, @sponsor), alert: "Não foi possível realizar patrocínio nesse momento"
		end
	end

	def destroy
		@sponsor = current_user.sponsors.find(params[:id])
		@sponsor.destroy
		redirect_to perfil_path(current_user), notice: "Patrocinio Apagados"
	end

	private

		def sponsor_params
			params.require(:sponsor).permit(
				:keyword,
				:area,
				:estado,
				:cidade,
				:idadeinicial,
				:idadefinal,
				:renda,
				:genero,
				:escolaridade,
				:pessoasatingidas,
				:clipado?,
				:project)
		end

end
