class AddAttachmentImagemProjectToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :imagem_project
    end
  end

  def self.down
    remove_attachment :projects, :imagem_project
  end
end
