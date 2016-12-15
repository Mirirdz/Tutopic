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

ActiveRecord::Schema.define(version: 20161210221211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carrer_users", force: :cascade do |t|
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "carrer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_id"], name: "index_carrer_users_on_carrer_id", using: :btree
    t.index ["user_id"], name: "index_carrer_users_on_user_id", using: :btree
  end

  create_table "carrers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_carrer_users", force: :cascade do |t|
    t.integer  "points"
    t.integer  "subject_id"
    t.integer  "carrer_user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
    t.index ["carrer_user_id"], name: "index_subject_carrer_users_on_carrer_user_id", using: :btree
    t.index ["subject_id"], name: "index_subject_carrer_users_on_subject_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "carrer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_id"], name: "index_subjects_on_carrer_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "carrer_users", "carrers"
  add_foreign_key "carrer_users", "users"
  add_foreign_key "subject_carrer_users", "carrer_users"
  add_foreign_key "subject_carrer_users", "subjects"
  add_foreign_key "subjects", "carrers"
end
