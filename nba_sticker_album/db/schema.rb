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

ActiveRecord::Schema.define(version: 20170508144017) do

  create_table "albums", force: :cascade do |t|
    t.integer  "year"
    t.string   "title"
    t.integer  "total_stickers"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "stickers", force: :cascade do |t|
    t.string   "album_id"
    t.integer  "number"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "sticker_path"
    t.string   "name"
    t.string   "club"
    t.string   "external_link"
  end

  create_table "user_albums", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_stickers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sticker_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "is_tradeable"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "coins"
  end

end
