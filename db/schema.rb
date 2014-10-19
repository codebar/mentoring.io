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

ActiveRecord::Schema.define(version: 20141018182003) do

  create_table "classifieds", force: true do |t|
    t.integer  "member_id"
    t.string   "description"
    t.integer  "skill_id"
    t.boolean  "face_to_face"
    t.boolean  "remote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_skills", force: true do |t|
    t.integer "member_id"
    t.integer "skill_id"
    t.integer "level"
  end

  create_table "members", force: true do |t|
    t.string   "full_name"
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "gender"
    t.text     "about"
    t.integer  "expertise"
    t.boolean  "mentor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
    t.string   "location"
  end

  add_index "members", ["confirmation_token"], name: "index_members_on_confirmation_token", unique: true
  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true

  create_table "skills", force: true do |t|
    t.string "name"
    t.string "icon"
  end

end
