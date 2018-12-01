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

ActiveRecord::Schema.define(version: 2018_11_29_000616) do

  create_table "blocos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "espacos", force: :cascade do |t|
    t.integer "numero_sala"
    t.text "descricao"
    t.integer "capacidade"
    t.integer "disponivel"
    t.integer "bloco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bloco_id"], name: "index_espacos_on_bloco_id"
  end

  create_table "manutencaos", force: :cascade do |t|
    t.text "descricao"
    t.integer "espaco_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["espaco_id"], name: "index_manutencaos_on_espaco_id"
    t.index ["user_id"], name: "index_manutencaos_on_user_id"
  end

  create_table "pcds", force: :cascade do |t|
    t.text "tipo"
    t.string "cid"
    t.integer "turma_id"
    t.integer "espaco_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["espaco_id"], name: "index_pcds_on_espaco_id"
    t.index ["turma_id"], name: "index_pcds_on_turma_id"
    t.index ["user_id"], name: "index_pcds_on_user_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.datetime "data_reserva"
    t.integer "ativo"
    t.text "observacao"
    t.integer "espaco_id"
    t.integer "turma_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["espaco_id"], name: "index_reservas_on_espaco_id"
    t.index ["turma_id"], name: "index_reservas_on_turma_id"
    t.index ["user_id"], name: "index_reservas_on_user_id"
  end

  create_table "turmas", force: :cascade do |t|
    t.string "curso"
    t.date "ingresso"
    t.string "turno"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "cod"
    t.integer "admin", default: 0
    t.integer "ativo", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
