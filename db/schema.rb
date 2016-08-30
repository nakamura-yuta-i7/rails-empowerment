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

ActiveRecord::Schema.define(version: 20160817015729) do

  create_table "corporations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "code",           limit: 255
    t.integer  "parent_id",      limit: 4
    t.integer  "corporation_id", limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "departments", ["corporation_id"], name: "index_departments_on_corporation_id", using: :btree

  create_table "employment_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "email",                limit: 255
    t.integer  "employment_status_id", limit: 4
    t.integer  "department_id",        limit: 4
    t.integer  "title_id",             limit: 4
    t.integer  "enrollment_id",        limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "people", ["department_id"], name: "index_people_on_department_id", using: :btree
  add_index "people", ["employment_status_id"], name: "index_people_on_employment_status_id", using: :btree
  add_index "people", ["enrollment_id"], name: "index_people_on_enrollment_id", using: :btree
  add_index "people", ["title_id"], name: "index_people_on_title_id", using: :btree

  create_table "titles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "departments", "corporations"
  add_foreign_key "people", "departments"
  add_foreign_key "people", "employment_statuses"
  add_foreign_key "people", "enrollments"
  add_foreign_key "people", "titles"
end
