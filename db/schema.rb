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

ActiveRecord::Schema.define(version: 20170622052909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_dishes", force: :cascade do |t|
    t.integer "category_id"
    t.integer "dish_id"
  end

  create_table "cuisines", force: :cascade do |t|
    t.text     "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuisines_dishes", force: :cascade do |t|
    t.integer "cuisine_id"
    t.integer "dish_id"
  end

  create_table "cuisines_venues", force: :cascade do |t|
    t.integer "cuisine_id"
    t.integer "venue_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "venue_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "user_id"
    t.integer  "dish_id"
    t.text     "description"
    t.text     "price_range"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "full_name"
    t.text     "email"
    t.string   "password_digest"
    t.text     "image"
    t.text     "instagram"
    t.text     "bio"
    t.text     "website"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "venue_name"
    t.string   "street_address"
    t.integer  "postcode"
    t.integer  "cuisine_id"
    t.string   "website"
    t.string   "price_range"
    t.string   "opening_hours"
    t.string   "reservation_avail"
    t.text     "business_description"
    t.text     "user_description"
    t.string   "phone"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.string   "instagram"
    t.integer  "dish_id"
  end

end
