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

ActiveRecord::Schema.define(version: 20140117090322) do

  create_table "credentials", force: true do |t|
    t.string   "provider"
    t.integer  "uid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credentials", ["user_id"], name: "index_credentials_on_user_id"

  create_table "entries", force: true do |t|
    t.integer  "project_id"
    t.string   "title"
    t.string   "username"
    t.string   "password"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["project_id"], name: "index_entries_on_project_id"

  create_table "entry_histories", force: true do |t|
    t.integer  "entry_id"
    t.string   "title"
    t.string   "username"
    t.string   "password"
    t.text     "description"
    t.integer  "serial"
    t.integer  "parent_history_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entry_histories", ["entry_id"], name: "index_entry_histories_on_entry_id"

  create_table "entry_users", force: true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.integer  "Entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entry_users", ["Entry_id"], name: "index_entry_users_on_Entry_id"
  add_index "entry_users", ["role_id"], name: "index_entry_users_on_role_id"
  add_index "entry_users", ["user_id"], name: "index_entry_users_on_user_id"

  create_table "project_users", force: true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_users", ["project_id"], name: "index_project_users_on_project_id"
  add_index "project_users", ["role_id"], name: "index_project_users_on_role_id"
  add_index "project_users", ["user_id"], name: "index_project_users_on_user_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.boolean  "is_admin"
    t.boolean  "referable"
    t.boolean  "creatable"
    t.boolean  "updatable"
    t.boolean  "deletable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
