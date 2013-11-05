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

ActiveRecord::Schema.define(:version => 20131105093641) do

  create_table "scholar_venues", :force => true do |t|
    t.integer "scholar_id"
    t.integer "venue_id"
    t.integer "count"
  end

  create_table "scholars", :force => true do |t|
    t.string    "name"
    t.string    "google_scholar_id"
    t.integer   "citations"
    t.integer   "recent_citations"
    t.integer   "hindex"
    t.integer   "recent_hindex"
    t.integer   "i10index"
    t.integer   "recent_i10index"
    t.timestamp "created_at",        :null => false
    t.timestamp "updated_at",        :null => false
    t.string    "dblp_author_id"
    t.timestamp "scraped_at"
    t.string    "current_position"
    t.string    "phd_from"
    t.integer   "phd_year"
    t.string    "last_institution"
    t.string    "last_job"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "venues", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

end
