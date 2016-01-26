class UsersController < ApplicationController

	skip_before_action :ensure_login, only: [:pagina_inicial, :new, :create]

	def pagina_inicial
		
	end

	def index
		@user = current_user
		@projects = current_user.projects.all
		@sponsors = current_user.sponsors.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to perfil_path
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		@user = current_user
		if @user.update(user_params)
			redirect_to perfil_path, notice: "Suas informações foram mudadas!"
		else
			redirect_to perfil_path, alert: "Não foi possível mudar as suas informações"
		end
	end

	def destroy
		@user = current_user
		session[:user_id] = nil
		@user.destroy
		redirect_to root_path, notice: "O Usuário foi apagado"
	end


	private

		def user_params
			params.require(:user).permit( 
				:nome,
				:sobrenome,
				:razaosocial,
				:nomefantasia, 
				:cpf, 
				:cnpj, 
				:estado, 
				:cidade, 
				:endereco, 
				:email, 
				:telefone, 
				:telefone2,
				:cadastromunicipal,
				:cadastroestadual,
				:rg,
				:descricaoempresa,
				:datanascimento,
				:datacriacao,
				:password,
				:linkedin,
				:imagem_user)
		end
	
end
