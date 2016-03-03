class AddAttachmentImagemCotasToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :imagem_cotas
    end
  end

  def self.down
    remove_attachment :projects, :imagem_cotas
  end
end
