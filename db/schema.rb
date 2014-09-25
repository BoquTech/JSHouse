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

ActiveRecord::Schema.define(version: 20140923090156) do

  create_table "addresses", force: true do |t|
    t.string   "country"
    t.string   "city"
    t.string   "city_img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "note"
    t.string   "status"
    t.string   "manager"
    t.string   "ip"
    t.integer  "property_id"
  end

  add_index "feedbacks", ["property_id"], name: "index_feedbacks_on_property_id", using: :btree

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

  create_table "item_images", force: true do |t|
    t.string   "refid"
    t.string   "image_url"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_images", ["property_id"], name: "index_item_images_on_property_id", using: :btree

  create_table "pictures", force: true do |t|
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  add_index "pictures", ["house_id"], name: "index_pictures_on_house_id", using: :btree

  create_table "properties", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "address"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "family_rooms"
    t.integer  "reception_rooms"
    t.float    "latitude",          limit: 24
    t.float    "longitude",         limit: 24
    t.text     "features"
    t.string   "agent_id"
    t.string   "agent_name"
    t.datetime "date_available"
    t.string   "building_name"
    t.string   "district"
    t.float    "indoor_size",       limit: 24
    t.float    "saleable_area",     limit: 24
    t.float    "buy",               limit: 24
    t.float    "rent",              limit: 24
    t.string   "refid"
    t.float    "building_age",      limit: 24
    t.string   "outdoor_size"
    t.string   "float"
    t.boolean  "inclusive_display"
    t.string   "inclusive_mfee"
    t.string   "inclusive_govr"
    t.boolean  "address_display"
    t.string   "street"
    t.string   "view"
    t.string   "layout"
    t.string   "floor"
    t.string   "uuid"
    t.integer  "user_id"
    t.string   "data_source"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country"
    t.string   "city"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
