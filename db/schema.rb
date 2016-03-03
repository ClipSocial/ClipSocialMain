# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160303171958) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "messages", force: :cascade do |t|
    t.text     "message"
    t.text     "email_mensagem"
    t.integer  "sponsor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "messages", ["sponsor_id"], name: "index_messages_on_sponsor_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.boolean  "determinado",                 default: false
    t.date     "duracao"
    t.string   "leidepatrocionio"
    t.string   "areadeatuacao"
    t.string   "cidade"
    t.string   "estado"
    t.string   "endereco"
    t.integer  "idadeinicial"
    t.integer  "idadefinal"
    t.integer  "pessoasatigindas"
    t.string   "renda"
    t.string   "genero"
    t.string   "escolaridade"
    t.string   "site"
    t.string   "facebook"
    t.integer  "curtidas"
    t.string   "twitter"
    t.integer  "seguidores"
    t.string   "youtube"
    t.integer  "inscritos"
    t.string   "instagaram"
    t.integer  "seguidos"
    t.text     "descricao_projeto1"
    t.text     "descricao_projeto2"
    t.text     "descricao_projeto3"
    t.text     "recursos"
    t.text     "conquistas"
    t.string   "data_de_pagamento"
    t.integer  "score"
    t.integer  "user_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "imagem_project_file_name"
    t.string   "imagem_project_content_type"
    t.integer  "imagem_project_file_size"
    t.datetime "imagem_project_updated_at"
    t.string   "imagem_cotas_file_name"
    t.string   "imagem_cotas_content_type"
    t.integer  "imagem_cotas_file_size"
    t.datetime "imagem_cotas_updated_at"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "sponsors", force: :cascade do |t|
    t.string   "keyword"
    t.string   "area"
    t.string   "estado"
    t.string   "cidade"
    t.integer  "idadeinicial"
    t.integer  "idadefinal"
    t.string   "renda"
    t.string   "genero"
    t.integer  "escolaridade"
    t.integer  "pessoasatingidas"
    t.boolean  "clipado?",         default: false
    t.boolean  "pagou?",           default: false
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "sponsors", ["project_id"], name: "index_sponsors_on_project_id"
  add_index "sponsors", ["user_id"], name: "index_sponsors_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "razaosocial"
    t.string   "nomefantasia"
    t.integer  "cpf",                      limit: 12
    t.string   "cnpj"
    t.string   "estado"
    t.string   "cidade"
    t.string   "endereco"
    t.string   "email"
    t.integer  "telefone",                 limit: 11
    t.integer  "telefone2",                limit: 11
    t.boolean  "cadastromunicipal",                   default: false
    t.boolean  "inscricaoestadual",                   default: false
    t.string   "representante_legal"
    t.integer  "rg",                       limit: 10
    t.text     "descricaopessoal"
    t.text     "descricaoempresa"
    t.date     "datanascimento"
    t.date     "datacriacao"
    t.string   "password_digest"
    t.string   "linkedin"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "imagem_user_file_name"
    t.string   "imagem_user_content_type"
    t.integer  "imagem_user_file_size"
    t.datetime "imagem_user_updated_at"
  end

end
