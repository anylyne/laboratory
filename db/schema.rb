# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_26_153120) do

  create_table "episodes", force: :cascade do |t|
    t.integer "patient_id"
    t.date "date", null: false
    t.integer "age", null: false
    t.integer "blood_pressure", null: false
    t.float "glucose", null: false
    t.boolean "diabetes", null: false
    t.integer "wcc", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id", "date"], name: "index_episodes_on_patient_id_and_date", unique: true
    t.index ["patient_id"], name: "index_episodes_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "gender", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
