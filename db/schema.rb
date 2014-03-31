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

ActiveRecord::Schema.define(version: 20140326164936) do

  create_table "categories", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds", force: true do |t|
    t.string   "title",       null: false
    t.integer  "category_id"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["category_id"], :name => "fk__feeds_category_id"
    t.foreign_key ["category_id"], "categories", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_feeds_category_id"
  end

  create_table "feed_items", force: true do |t|
    t.string   "title"
    t.string   "summary"
    t.string   "url"
    t.date     "published_at"
    t.integer  "feed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["feed_id"], :name => "fk__feed_items_feed_id"
    t.foreign_key ["feed_id"], "feeds", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_feed_items_feed_id"
  end

  create_table "users", force: true do |t|
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
    t.index ["email"], :name => "index_users_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  end

  create_table "feed_users", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "feed_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["feed_id"], :name => "fk__feed_users_feed_id"
    t.index ["user_id"], :name => "fk__feed_users_user_id"
    t.foreign_key ["feed_id"], "feeds", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_feed_users_feed_id"
    t.foreign_key ["user_id"], "users", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_feed_users_user_id"
  end

end
