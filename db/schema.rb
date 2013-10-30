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

ActiveRecord::Schema.define(version: 20131030133332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.decimal  "unit_price",          precision: 10, scale: 2
    t.string   "product_description"
    t.boolean  "deleted",                                      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minimum_stock"
  end

  create_table "stocks", force: true do |t|
    t.integer  "current_stock"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "email"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
