# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_05_235416) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "cpf"
    t.string "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipes", force: :cascade do |t|
    t.string "nome"
    t.string "Funcionarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "descricao"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "funcao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "equipe_id", null: false
    t.index ["equipe_id"], name: "index_funcionarios_on_equipe_id"
  end

  create_table "ordem_servicos", force: :cascade do |t|
    t.date "conclusao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "equipe_id"
    t.bigint "cliente_id"
    t.bigint "veiculo_id"
    t.bigint "part_id"
    t.bigint "servico_id"
    t.index ["cliente_id"], name: "index_ordem_servicos_on_cliente_id"
    t.index ["equipe_id"], name: "index_ordem_servicos_on_equipe_id"
    t.index ["part_id"], name: "index_ordem_servicos_on_part_id"
    t.index ["servico_id"], name: "index_ordem_servicos_on_servico_id"
    t.index ["veiculo_id"], name: "index_ordem_servicos_on_veiculo_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "nome"
    t.integer "quantidade"
    t.decimal "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "modelo"
    t.string "placa"
    t.string "cor"
    t.string "dono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cliente_id", null: false
    t.index ["cliente_id"], name: "index_veiculos_on_cliente_id"
  end

  add_foreign_key "funcionarios", "equipes"
  add_foreign_key "ordem_servicos", "clientes"
  add_foreign_key "ordem_servicos", "equipes"
  add_foreign_key "ordem_servicos", "parts"
  add_foreign_key "ordem_servicos", "parts"
  add_foreign_key "ordem_servicos", "servicos"
  add_foreign_key "ordem_servicos", "servicos"
  add_foreign_key "ordem_servicos", "veiculos"
  add_foreign_key "veiculos", "clientes"
end
