class AddAttachmentImagemUserToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :imagem_user
    end
  end

  def self.down
    remove_attachment :users, :imagem_user
  end
end
