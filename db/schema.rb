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

ActiveRecord::Schema.define(version: 2020_02_22_174438) do

  create_table "athletes", force: :cascade do |t|
    t.string "account_type"
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "sport_name"
    t.string "nacionality"
    t.string "cur_company"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "acount_type"
    t.string "nombre"
    t.string "nacionality"
    t.string "industry"
    t.text "bio"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "id_company"
    t.integer "id_athlete"
    t.date "contract_sta"
    t.date "contract_end"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "name_event"
    t.string "ranking"
    t.string "scoring"
    t.date "date_event"
    t.string "country"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "sport_Names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
