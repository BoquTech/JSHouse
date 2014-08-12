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

ActiveRecord::Schema.define(version: 20140811090420) do

  create_table "addresses", force: true do |t|
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "houses", force: true do |t|
    t.string   "name"
    t.string   "introduce"
    t.string   "style"
    t.decimal  "price",       precision: 10, scale: 0
    t.string   "location"
    t.decimal  "area",        precision: 10, scale: 0
    t.text     "discription"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "houses", ["address_id"], name: "index_houses_on_address_id", using: :btree

  create_table "pictures", force: true do |t|
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  add_index "pictures", ["house_id"], name: "index_pictures_on_house_id", using: :btree

end
