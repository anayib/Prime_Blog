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

ActiveRecord::Schema.define(version: 20141209205907) do

  create_table "authors", force: true do |t|
    t.text     "name"
    t.text     "bio"
    t.string   "url_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_strategies", id: false, force: true do |t|
    t.integer "author_id",   null: false
    t.integer "strategy_id", null: false
  end

  add_index "authors_strategies", ["author_id", "strategy_id"], name: "index_authors_strategies_on_author_id_and_strategy_id"
  add_index "authors_strategies", ["strategy_id", "author_id"], name: "index_authors_strategies_on_strategy_id_and_author_id"

  create_table "strategies", force: true do |t|
    t.text     "title"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "tips", force: true do |t|
    t.text     "title"
    t.integer  "strategy_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tips", ["strategy_id_id"], name: "index_tips_on_strategy_id_id"

end
