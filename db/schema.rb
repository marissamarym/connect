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

ActiveRecord::Schema.define(version: 20140710001726) do

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

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "guides", force: true do |t|
    t.integer  "user_id"
    t.integer  "school_id"
    t.string   "major"
    t.string   "interests"
    t.string   "hometown"
    t.text     "blurb"
    t.string   "year"
    t.integer  "payment_id"
    t.text     "payment_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guides", ["school_id"], name: "index_guides_on_school_id"
  add_index "guides", ["user_id"], name: "index_guides_on_user_id"

  create_table "prospies", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospies", ["user_id"], name: "index_prospies_on_user_id"

  create_table "ratings", force: true do |t|
    t.integer  "tour_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["tour_id"], name: "index_ratings_on_tour_id"

  create_table "schools", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "details_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tour_requests", force: true do |t|
    t.integer  "guide_id"
    t.string   "type"
    t.integer  "visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tour_requests", ["guide_id"], name: "index_tour_requests_on_guide_id"
  add_index "tour_requests", ["visit_id"], name: "index_tour_requests_on_visit_id"

  create_table "tours", force: true do |t|
    t.integer  "tour_request_id"
    t.decimal  "guide_percentage"
    t.decimal  "price"
    t.boolean  "canceled"
    t.text     "notes"
    t.datetime "scheduled_time"
    t.boolean  "paid"
    t.text     "private_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tours", ["tour_request_id"], name: "index_tours_on_tour_request_id"

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
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "visits", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "type"
    t.text     "notes"
    t.integer  "prospie_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["prospie_id"], name: "index_visits_on_prospie_id"
  add_index "visits", ["school_id"], name: "index_visits_on_school_id"

end
