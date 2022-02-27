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

ActiveRecord::Schema[7.0].define(version: 2022_02_21_170744) do
  create_table "applications", force: :cascade do |t|
    t.string "token"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chats_count"
    t.index ["token"], name: "index_applications_on_token", unique: true
  end

  create_table "chats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "application_token"
    t.integer "client_id"
    t.integer "client_2_id"
    t.index ["application_token"], name: "index_chats_on_application_token"
    t.index ["client_2_id"], name: "index_chats_on_client_2_id"
    t.index ["client_id"], name: "index_chats_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_clients_on_chat_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "chat_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["client_id"], name: "index_messages_on_client_id"
  end

  add_foreign_key "chats", "clients"
  add_foreign_key "chats", "clients", column: "client_2_id"
  add_foreign_key "clients", "chats"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "clients"
end
