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
    t.string   "email"
    t.string   "gender"
    t.text     "about"
    t.integer  "expertise"
    t.boolean  "mentor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "skills", force: true do |t|
    t.string "name"
    t.string "icon"
  end

end
