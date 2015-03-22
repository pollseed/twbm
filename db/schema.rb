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

ActiveRecord::Schema.define(version: 20150320122650) do

  create_table "bot_hashes", force: :cascade do |t|
    t.integer  "bot_id"
    t.integer  "seq"
    t.integer  "hash_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bots", force: :cascade do |t|
    t.string   "twitter_name"
    t.string   "twitter_id"
    t.string   "access_token"
    t.boolean  "deleted",       default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "hash_tags"
    t.integer  "acc_key"
    t.integer  "acc_sec"
    t.string   "access_secret"
  end

  create_table "hash_tags", force: :cascade do |t|
    t.string   "hash_tag"
    t.boolean  "deleted",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
