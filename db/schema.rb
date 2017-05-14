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

ActiveRecord::Schema.define(version: 20170514145859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.integer  "car_type_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cars", ["car_type_id"], name: "index_cars_on_car_type_id", using: :btree

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile_number"
    t.string   "car_plate_number"
    t.string   "emi"
    t.string   "emi_date"
    t.string   "in_cab_business_from"
    t.integer  "plan"
    t.integer  "area_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "drivers", ["area_id"], name: "index_drivers_on_area_id", using: :btree

  create_table "franchise_leaders", force: :cascade do |t|
    t.string   "name"
    t.date     "birth_date"
    t.string   "mobile_number"
    t.integer  "exp_in_cab_business"
    t.string   "monthly_expectations"
    t.integer  "area_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "is_approved"
  end

  add_index "franchise_leaders", ["area_id"], name: "index_franchise_leaders_on_area_id", using: :btree

  create_table "franchises", force: :cascade do |t|
    t.string   "name"
    t.date     "birth_date"
    t.string   "mobile_number"
    t.integer  "cars_in_contact"
    t.integer  "exp_in_cab_business"
    t.string   "monthly_expectations"
    t.integer  "area_id"
    t.boolean  "is_approved"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "franchises", ["area_id"], name: "index_franchises_on_area_id", using: :btree

  add_foreign_key "cars", "car_types"
  add_foreign_key "drivers", "areas"
  add_foreign_key "franchise_leaders", "areas"
  add_foreign_key "franchises", "areas"
end
