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

ActiveRecord::Schema.define(version: 20150808110430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lectures", force: :cascade do |t|
    t.string   "name",         limit: 255, null: false
    t.float    "grade"
    t.integer  "major_id"
    t.integer  "professor_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "lectures", ["major_id"], name: "index_lectures_on_major_id", using: :btree
  add_index "lectures", ["professor_id"], name: "index_lectures_on_professor_id", using: :btree

  create_table "majors", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.integer  "lecture_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "majors", ["lecture_id"], name: "index_majors_on_lecture_id", using: :btree

  create_table "professors", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.integer  "major_id"
    t.integer  "lecture_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "professors", ["lecture_id"], name: "index_professors_on_lecture_id", using: :btree
  add_index "professors", ["major_id"], name: "index_professors_on_major_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.float    "rating_unit"
    t.float    "rating_quality"
    t.text     "content"
    t.integer  "lecture_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "reviews", ["lecture_id"], name: "index_reviews_on_lecture_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "professors", "majors", name: "professors_major_id_fk"
  add_foreign_key "reviews", "lectures", name: "reviews_lecture_id_fk"
end
