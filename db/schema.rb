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

ActiveRecord::Schema.define(version: 2020_09_19_113215) do

  create_table "accounts", id: false, force: :cascade do |t|
    t.string "mine", null: false
    t.integer "birthday"
    t.integer "sex", default: 0, null: false
    t.string "educate"
    t.string "subject"
    t.string "charm"
    t.string "hardy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "ids", null: false
    t.string "password", null: false
    t.string "link"
    t.string "homepage"
    t.string "memo"
    t.string "mine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mouths", force: :cascade do |t|
    t.string "company", null: false
    t.string "category", null: false
    t.string "title", null: false
    t.integer "sex", default: 0, null: false
    t.date "write_day"
    t.string "yourself"
    t.string "subject"
    t.string "content", null: false
    t.string "mine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name", null: false
    t.date "event_day"
    t.time "start"
    t.time "endDate"
    t.string "place"
    t.string "content"
    t.string "mine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studies", force: :cascade do |t|
    t.string "title", null: false
    t.string "memo", null: false
    t.string "mine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
