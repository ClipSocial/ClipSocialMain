class Sponsor < ActiveRecord::Base

	belongs_to :user

	belongs_to :project

	has_many :messages, dependent: :destroy

	def projetos
		@projetos ||= find_projetos
	end

	private

		def find_projetos

			projetos = Project.all

			projetos = projetos.where("name LIKE ?", "#{keyword}") if keyword.present?

			projetos = projetos.where("areadeatuacao LIKE ?", area) if area.present?

			projetos = projetos.where("estado LIKE ?", estado) if estado.present?

			projetos = projetos.where("cidade LIKE ?", cidade) if cidade.present?

			projetos = projetos.where(idadeinicial: ((idadeinicial-idadeinicial*1/10)..(idadeinicial+idadeinicial*1/10))) if idadeinicial.present?

			projetos = projetos.where(idadefinal: ((idadefinal-idadefinal*1/10)..(idadefinal+idadefinal*1/10))) if idadefinal.present?

			projetos = projetos.where("renda LIKE ?", renda) if renda.present?

			if genero.downcase == "todos" && genero.present?

				projetos = projetos.where("genero LIKE ?", "Feminino")

				projetos = projetos.where("genero LIKE ?" "Masculino")

				projetos = projetos.where("genero LIKE ?", "Outros")

				projetos = projetos.where("genero LIKE ?", "Todos")

			else

				projetos = projetos.where("genero LIKE ?", genero) if genero.present?
					
			end

			projetos = projetos.where("escolaridade LIKE ?", escolaridade) if escolaridade.present?

			projetos = projetos.where("pessoasatigindas <= ?", pessoasatingidas) if pessoasatingidas.present?

			projetos

		end
	
end
