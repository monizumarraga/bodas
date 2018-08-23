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

ActiveRecord::Schema.define(version: 2018_08_23_062629) do

  create_table "details", force: :cascade do |t|
    t.string "case"
    t.string "name"
    t.string "place"
    t.string "contact"
    t.text "extra"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "introduction"
    t.index ["user_id"], name: "index_details_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "present_id"
    t.index ["present_id"], name: "index_images_on_present_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "information", force: :cascade do |t|
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "name"
    t.date "date"
    t.string "place"
    t.string "restaurant"
    t.string "city"
    t.datetime "hour"
  end

  create_table "presents", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_presents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token", limit: 30
    t.string "reset_digest"
    t.boolean "admin", default: false
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
