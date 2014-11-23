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

ActiveRecord::Schema.define(version: 20141123164540) do

  create_table "orders", force: true do |t|
    t.string   "custumer"
    t.string   "product"
    t.boolean  "account_approval",   limit: 255
    t.text     "account_comment"
    t.boolean  "warehouse_approval", limit: 255
    t.string   "destination"
    t.string   "current_location"
    t.boolean  "delivered",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "warehouse_comment"
    t.integer  "stage_id"
    t.string   "driver"
  end

  add_index "orders", ["stage_id"], name: "index_orders_on_stage_id"

  create_table "stages", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
