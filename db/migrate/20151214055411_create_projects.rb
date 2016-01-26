class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :determinado, default: false
      t.date :duracao
      t.string :leidepatrocionio, null: true
      t.string :areadeatuacao
      t.string :cidade
      t.string :estado
      t.string :endereco
      t.integer :idadeinicial
      t.integer :idadefinal
      t.integer :pessoasatigindas
      t.string :renda
      t.string :genero
      t.string :escolaridade
      t.string :site
      t.string :facebook, null: true
      t.integer :curtidas
      t.string :twitter, null: true
      t.integer :seguidores
      t.string :youtube, null: true
      t.integer :inscritos
      t.string :instagaram, null: true
      t.integer :seguidos
      t.text :descricao_projeto1
      t.text :descricao_projeto2
      t.text :descricao_projeto3
      t.text :recursos
      t.text :conquistas
      t.string :data_de_pagamento
      t.integer :score
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
