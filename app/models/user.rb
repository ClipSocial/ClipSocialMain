class User < ActiveRecord::Base

	has_secure_password

	has_many :sponsors, dependent: :destroy

	has_many :projects, dependent: :destroy

	has_attached_file :imagem_user, styles: { medium: "150x150", thumb: "50x50#"}
	validates_attachment_content_type :imagem_user, content_type: /\Aimage\/.*\Z/
	
end
