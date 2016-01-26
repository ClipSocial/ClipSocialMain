class Project < ActiveRecord::Base

	belongs_to :user

	has_many :sponsors, dependent: :destroy

	has_attached_file :imagem_project, styles: {large: "300x300", medium: "150x150", thumb: "50x50#"}
	validates_attachment_content_type :imagem_project, content_type: /\Aimage\/.*\Z/

	private

	constante1 = 5
	constante2 = 3
	constante3 = 1

	def match_area(area, peso)
		self.score += peso * constante1 if area.downcase == self.areadeatuacao.downcase
	end

	def match_estado(estado, peso)
		self.score += peso * constante1 if estado.downcase == self.estado.downcase
	end

	def match_cidade(cidade, peso)
		self.score += peso * constante1 if cidade.downcase == self.cidade.downcase
	end

	def match_faixa_etaria(idadeincial, idadefinal, peso)
		if (idadeinicial..idadefinal) == (self.idadeinicial..self.idadefinal)
			self.score += peso * constante1
		elsif (self.idadeinicial..self.idadefinal).include?(idadeinicial..idadefinal)
			self.score += peso * constante2
		elsif (self.idadeincial..self.idadefinal).overlaps?(idadeincial..idadefinal)
			self.score += peso * constante3
		else
			self.score += 0
		end
	end

	def match_renda(renda, peso)
		self.score += peso * constante1 if renda.downcase == self.renda.downcase
	end

	def match_genero(genero, peso)
		if genero.downcase == self.genero.downcase
			self.score += peso * constante1
		elsif genero == "todos" && self.genero.downcase != genero
			self.score += peso * constante2
		else
			self.score += 0
		end
	end

	def match_escolaridade(escolaridade, peso)
		if escolaridade == self.escolaridade
			self.score += peso * constante1
		elsif self.escolaridade > escolaridade
			self.score += peso * constante3
		else
			self.score += 0
		end
	end

	def match_pessoas_atingindas(pessoasatingidas, peso)
		if self.pessoasatingidas >= pessoasatingidas
			self.score += peso * constante1
		elsif pessoasatingidas > self.pessoasatingidas >= pessoasatingidas - pessoasatingidas * 0.20
			self.score += peso * constante2
		elsif pessoasatingidas > self.pessoasatingidas >= pessoasatingidas - pessoasatingidas * (1/3)
			self.score += peso * constante3
		else
			self.score += 0
		end
	end
	
end
