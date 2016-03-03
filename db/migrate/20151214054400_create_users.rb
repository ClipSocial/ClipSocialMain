class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome, null: true
      t.string :sobrenome, null: true
      t.string :razaosocial, null: true
      t.string :nomefantasia, null: true
      t.integer :cpf, null: true, limit: 12
      t.string :cnpj, null: true
      t.string :estado
      t.string :cidade
      t.string :endereco
      t.string :email
      t.integer :telefone, limit: 11
      t.integer :telefone2, null: true, limit: 11
      t.boolean :cadastromunicipal, default: false
      t.boolean :inscricaoestadual, default: false
      t.string :representante_legal
      t.integer :rg, null: true, limit: 10
      t.text :descricaopessoal
      t.text :descricaoempresa
      t.date :datanascimento
      t.date :datacriacao
      t.string :password_digest
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
