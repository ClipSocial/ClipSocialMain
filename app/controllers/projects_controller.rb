class ProjectsController < ApplicationController

	def create
		@project = current_user.projects.create(project_params)
		if @project.save
			redirect_to user_project_path(current_user, @project)
		else
			render perfil_path
		end
	end

	def show
		@project = current_user.projects.find(params[:id])
		@sponsors = @project.sponsors
		
	end

	def destroy
		@project = current_user.projects.find(params[:id])
		@project.destroy
		redirect_to perfil_path(current_user), notice: "Projeto Apagado"
	end

	private

		def project_params
			params.require(:project).permit(
				:name,
				:determinado,
				:duracao,
				:leidepatrocionio,
				:areadeatuacao,
				:cidade,
				:estado,
				:endereco,
				:idadeinicial,
				:idadefinal,
				:pessoasatigindas,
				:renda,
				:genero,
				:escolaridade,
				:site,
				:facebook,
				:curtidas,
				:twitter,
				:seguidores,
				:youtube,
				:inscritos,
				:instagaram,
				:seguidos,
				:imagem_project,
				:descricao_projeto1,
				:descricao_projeto2, 
				:descricao_projeto3,
				:recursos,
				:conquistas,
				:data_de_pagamento)
			
		end

end
