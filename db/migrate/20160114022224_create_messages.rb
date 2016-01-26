class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.text :email_mensagem
      t.references :sponsor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
