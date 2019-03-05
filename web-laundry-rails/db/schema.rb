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

ActiveRecord::Schema.define(version: 2019_03_04_163055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.string "member_code"
    t.string "member_name"
    t.string "member_address"
    t.string "member_phone"
    t.string "member_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "officers", force: :cascade do |t|
    t.string "officer_name"
    t.string "officer_address"
    t.string "officer_gender"
    t.integer "officer_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_receiveds", force: :cascade do |t|
    t.string "order_code"
    t.integer "order_money"
    t.integer "order_scales_laundry"
    t.date "order_date_start"
    t.date "order_date_end"
    t.bigint "member_id"
    t.bigint "officer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_order_receiveds_on_member_id"
    t.index ["officer_id"], name: "index_order_receiveds_on_officer_id"
  end

  create_table "packaging_laundries", force: :cascade do |t|
    t.string "packing_code"
    t.string "packing_status"
    t.date "date_packing"
    t.bigint "member_id"
    t.bigint "officer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_packaging_laundries_on_member_id"
    t.index ["officer_id"], name: "index_packaging_laundries_on_officer_id"
  end

  add_foreign_key "order_receiveds", "members"
  add_foreign_key "order_receiveds", "officers"
  add_foreign_key "packaging_laundries", "members"
  add_foreign_key "packaging_laundries", "officers"
end
