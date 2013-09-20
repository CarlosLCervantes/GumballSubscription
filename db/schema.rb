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

ActiveRecord::Schema.define(version: 20130917081426) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "brands", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors_items", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "color_id"
  end

  add_index "colors_items", ["color_id", "item_id"], name: "index_colors_items_on_color_id_and_item_id", using: :btree
  add_index "colors_items", ["item_id", "color_id"], name: "index_colors_items_on_item_id_and_color_id", using: :btree

  create_table "item_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name",                                                  null: false
    t.string   "internal_name"
    t.integer  "brand_id",                                              null: false
    t.integer  "item_type_id",                                          null: false
    t.decimal  "msrp",          precision: 10, scale: 0
    t.decimal  "price",         precision: 10, scale: 0,                null: false
    t.string   "img_1",                                                 null: false
    t.string   "img_2"
    t.string   "img_3"
    t.string   "img_4"
    t.text     "description",                                           null: false
    t.text     "details"
    t.text     "guide"
    t.integer  "stock",                                  default: 0
    t.boolean  "active",                                 default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items_occasions", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "occasion_id"
  end

  add_index "items_occasions", ["item_id", "occasion_id"], name: "index_items_occasions_on_item_id_and_occasion_id", using: :btree
  add_index "items_occasions", ["occasion_id", "item_id"], name: "index_items_occasions_on_occasion_id_and_item_id", using: :btree

  create_table "items_styles", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "style_id"
  end

  add_index "items_styles", ["item_id", "style_id"], name: "index_items_styles_on_item_id_and_style_id", using: :btree
  add_index "items_styles", ["style_id", "item_id"], name: "index_items_styles_on_style_id_and_item_id", using: :btree

  create_table "leads", force: true do |t|
    t.string   "email"
    t.string   "device"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occasions", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "styles", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "password_reset_token"
    t.string   "password_reset_sent_at"
    t.string   "stripe_id"
    t.date     "birthday"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
