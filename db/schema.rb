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

ActiveRecord::Schema[7.0].define(version: 2024_05_24_155715) do
  create_table "appoints", force: :cascade do |t|
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "contact"
    t.string "doct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctornews", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "monmor"
    t.string "monaf"
    t.string "tuemor"
    t.string "tueaf"
    t.string "wedmor"
    t.string "wedaf"
    t.string "thurmor"
    t.string "thuraf"
    t.string "frimor"
    t.string "friaf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "month"
    t.string "week"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "monmor"
    t.string "monaf"
    t.string "tuemor"
    t.string "tueaf"
    t.string "wedmor"
    t.string "wedaf"
    t.string "thurmor"
    t.string "thuraf"
    t.string "frimor"
    t.string "friaf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pendings", force: :cascade do |t|
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "contact"
    t.string "adlaw"
    t.string "status", default: "Pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "docfirstname"
    t.string "docmiddlename"
    t.string "doclastname"
    t.string "mweek"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "contact"
    t.string "appoint"
    t.string "doct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
