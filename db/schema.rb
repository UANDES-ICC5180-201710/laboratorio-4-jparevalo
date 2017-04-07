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

ActiveRecord::Schema.define(version: 20170407095001) do

  create_table "assignments", force: :cascade do |t|
    t.string   "title"
    t.string   "enunciado"
    t.integer  "course_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["course_id_id"], name: "index_assignments_on_course_id_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.string   "code"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quota"
    t.index ["person_id"], name: "index_courses_on_person_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_enrollments_on_course_id"
    t.index ["person_id"], name: "index_enrollments_on_person_id"
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "person_id_id"
    t.integer  "assignment_id_id"
    t.integer  "value"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["assignment_id_id"], name: "index_grades_on_assignment_id_id"
    t.index ["person_id_id"], name: "index_grades_on_person_id_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
