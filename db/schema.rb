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

ActiveRecord::Schema.define(:version => 20130425182145) do

  create_table "admins", :force => true do |t|
    t.string   "nama"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "ingat_aku"
  end

  add_index "admins", ["ingat_aku"], :name => "index_admins_on_ingat_aku"

  create_table "budayas", :force => true do |t|
    t.string   "namabudaya"
    t.text     "deskripsibudaya"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "daerah_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "daerahs", :force => true do |t|
    t.string   "namadaerah"
    t.text     "deskripsidaerah"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "kontens", :force => true do |t|
    t.string   "namawisata"
    t.text     "tempat"
    t.text     "deskripsi"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "daerah_id"
  end

  create_table "makanans", :force => true do |t|
    t.string   "namamakanan"
    t.text     "deskripsimakanan"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "daerah_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "tempats", :force => true do |t|
    t.string   "namamatempat"
    t.text     "deskripsitempat"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
