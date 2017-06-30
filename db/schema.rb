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

ActiveRecord::Schema.define(version: 20170630213515) do

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

  create_table "confirm_franchises", force: :cascade do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.date     "birthdate"
    t.text     "pan_no"
    t.string   "email_id"
    t.text     "adhaar_no"
    t.string   "nominee_name"
    t.string   "relation_with_nominee"
    t.float    "amount"
    t.text     "cheque_no"
    t.date     "cheque_date"
    t.string   "bank_name"
    t.boolean  "is_pan_card"
    t.boolean  "is_adhaar_card"
    t.boolean  "is_light_bill"
    t.text     "franchise_code"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "mobile_no"
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile_number"
    t.string   "car_plate_number"
    t.string   "emi"
    t.string   "emi_date"
    t.string   "in_cab_business_from"
    t.string   "plan"
    t.integer  "area_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "car_id"
    t.string   "model"
    t.integer  "emi_date_dd"
  end

  add_index "drivers", ["area_id"], name: "index_drivers_on_area_id", using: :btree
  add_index "drivers", ["car_id"], name: "index_drivers_on_car_id", using: :btree

  create_table "franchise_areas", force: :cascade do |t|
    t.integer  "franchise_id"
    t.integer  "area_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "franchise_areas", ["area_id"], name: "index_franchise_areas_on_area_id", using: :btree
  add_index "franchise_areas", ["franchise_id"], name: "index_franchise_areas_on_franchise_id", using: :btree

  create_table "franchise_leader_areas", force: :cascade do |t|
    t.integer  "franchise_leader_id"
    t.integer  "area_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "franchise_leader_areas", ["area_id"], name: "index_franchise_leader_areas_on_area_id", using: :btree
  add_index "franchise_leader_areas", ["franchise_leader_id"], name: "index_franchise_leader_areas_on_franchise_leader_id", using: :btree

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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "cars", "car_types"
  add_foreign_key "drivers", "areas"
  add_foreign_key "drivers", "cars"
  add_foreign_key "franchise_areas", "areas"
  add_foreign_key "franchise_areas", "franchises"
  add_foreign_key "franchise_leader_areas", "areas"
  add_foreign_key "franchise_leader_areas", "franchise_leaders"
  add_foreign_key "franchise_leaders", "areas"
  add_foreign_key "franchises", "areas"
end
