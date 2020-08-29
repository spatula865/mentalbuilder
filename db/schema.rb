# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_28_143139) do

  create_table "ifthens", force: :cascade do |t|
    t.text "ifthen"
    t.text "todo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "memo"
  end

  create_table "pssfours", force: :cascade do |t|
    t.integer "question1"
    t.integer "question2"
    t.integer "question3"
    t.integer "question4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "memo"
    t.integer "sum"
    t.integer "user_id"
  end

  create_table "thermometers", force: :cascade do |t|
    t.integer "temperature"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "memo"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "profile"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "body"
    t.integer "user_id"
  end

  create_table "zatsudans", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hajimekata1"
    t.integer "hajimekata2"
    t.integer "hajimekata3"
    t.integer "hajimekata4"
    t.integer "hajimekata5"
    t.integer "hajimekata6"
    t.integer "hirogekata1"
    t.integer "hirogekata2"
    t.integer "hirogekata3"
    t.integer "hirogekata4"
    t.integer "hirogekata5"
    t.integer "hirogekata6"
    t.integer "hirogekata7"
    t.integer "hirogekata8"
    t.integer "kikikata1"
    t.integer "kikikata2"
    t.integer "kikikata3"
    t.integer "kikikata4"
    t.integer "kikikata5"
    t.integer "kikikata6"
    t.integer "moriagekata1"
    t.integer "moriagekata2"
    t.integer "moriagekata3"
    t.integer "moriagekata4"
    t.integer "moriagekata5"
    t.integer "moriagekata6"
    t.integer "moriagekata7"
    t.integer "moriagekata8"
    t.integer "moriagekata9"
    t.text "memo"
    t.integer "sumofhajimekata"
    t.integer "sumofhirogekata"
    t.integer "sumofkikikata"
    t.integer "sumofmoriagekata"
  end

end
