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

ActiveRecord::Schema.define(version: 20130718205933) do

  create_table "cats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cats", ["name"], name: "index_cats_on_name", unique: true, using: :btree

  create_table "cats_image_types", id: false, force: true do |t|
    t.integer "cat_id"
    t.integer "image_type_id"
  end

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dogs", ["name"], name: "index_dogs_on_name", unique: true, using: :btree

  create_table "dogs_image_types", id: false, force: true do |t|
    t.integer "dog_id"
    t.integer "image_type_id"
  end

  create_table "image_types", force: true do |t|
    t.string   "name"
    t.integer  "crop_x"
    t.integer  "crop_y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "name"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["attachable_id", "attachable_type"], name: "index_images_on_attachable_id_and_attachable_type", using: :btree

end
