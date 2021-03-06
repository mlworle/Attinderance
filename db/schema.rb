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

ActiveRecord::Schema.define(version: 20151119031330) do

  create_table "attendances", force: :cascade do |t|
    t.boolean  "present"
    t.integer  "student_id"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_loads", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_loads", ["course_id"], name: "index_course_loads_on_course_id"
  add_index "course_loads", ["teacher_id"], name: "index_course_loads_on_teacher_id"

  create_table "course_rosters", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_rosters", ["course_id"], name: "index_course_rosters_on_course_id"
  add_index "course_rosters", ["student_id"], name: "index_course_rosters_on_student_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "date"
    t.integer  "course_id"
    t.integer  "attendance_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "sessions", ["course_id"], name: "index_sessions_on_course_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "attendances_id"
    t.integer  "courses_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
  end

end
