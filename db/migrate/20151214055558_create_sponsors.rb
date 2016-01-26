class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :keyword
      t.string :area
      t.string :estado
      t.string :cidade
      t.integer :idadeinicial
      t.integer :idadefinal
      t.string :renda
      t.string :genero
      t.integer :escolaridade
      t.integer :pessoasatingidas
      t.boolean :clipado?, default: false
      t.boolean :pagou?, default: false
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
