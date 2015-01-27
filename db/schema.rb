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

ActiveRecord::Schema.define(version: 20150127140345) do

  create_table "girls", force: true do |t|
    t.string   "title"
    t.integer  "video_girlships_count", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "title"
    t.integer  "video_tagships_count", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "nickname",               default: ""
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "video_girlships", force: true do |t|
    t.integer  "video_id",   default: 0, null: false
    t.integer  "girl_id",    default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_tagships", force: true do |t|
    t.integer  "video_id",   default: 0, null: false
    t.integer  "tag_id",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title",       default: "",    null: false
    t.string   "cover"
    t.string   "preview"
    t.string   "url",         default: "",    null: false
    t.text     "introduce"
    t.boolean  "is_download", default: false
    t.string   "rtmp_host",   default: "",    null: false
    t.string   "rtmp_path",   default: "",    null: false
    t.boolean  "has_parsed"
    t.boolean  "has_video"
    t.integer  "views",       default: 0,     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
