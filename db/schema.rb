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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130625124639) do

  create_table "course_blocks", :force => true do |t|
    t.string   "name"
    t.text     "text"
    t.string   "picture"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "course_blocks", ["course_id"], :name => "index_course_blocks_on_course_id"

  create_table "course_options", :force => true do |t|
    t.string   "name"
    t.integer  "duration"
    t.decimal  "price",      :precision => 8, :scale => 2
    t.integer  "course_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "course_options", ["course_id"], :name => "index_course_options_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "picture"
  end

  create_table "openings", :force => true do |t|
    t.string   "opening_day"
    t.string   "opening_from"
    t.string   "opening_to"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end