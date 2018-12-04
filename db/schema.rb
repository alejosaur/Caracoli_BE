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

ActiveRecord::Schema.define(version: 2018_12_03_222715) do

  create_table "clients", force: :cascade do |t|
    t.integer "identification"
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dispatch_freshes", force: :cascade do |t|
    t.integer "fresh_fish_id"
    t.integer "dispatch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dispatch_id"], name: "index_dispatch_freshes_on_dispatch_id"
    t.index ["fresh_fish_id"], name: "index_dispatch_freshes_on_fresh_fish_id"
  end

  create_table "dispatch_frozens", force: :cascade do |t|
    t.integer "frozen_fish_id"
    t.integer "dispatch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dispatch_id"], name: "index_dispatch_frozens_on_dispatch_id"
    t.index ["frozen_fish_id"], name: "index_dispatch_frozens_on_frozen_fish_id"
  end

  create_table "dispatches", force: :cascade do |t|
    t.date "dispatch_date"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_dispatches_on_client_id"
  end

  create_table "food_in_harvests", force: :cascade do |t|
    t.integer "food_id"
    t.integer "harvest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_in_harvests_on_food_id"
    t.index ["harvest_id"], name: "index_food_in_harvests_on_harvest_id"
  end

  create_table "food_in_lots", force: :cascade do |t|
    t.integer "lot_id"
    t.integer "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_in_lots_on_food_id"
    t.index ["lot_id"], name: "index_food_in_lots_on_lot_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "brand"
    t.decimal "weight_balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fresh_fishes", force: :cascade do |t|
    t.decimal "final_weight"
    t.integer "size"
    t.integer "harvest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["harvest_id"], name: "index_fresh_fishes_on_harvest_id"
  end

  create_table "frozen_fishes", force: :cascade do |t|
    t.decimal "initial_weight"
    t.decimal "final_weight"
    t.integer "size"
    t.date "packing_date"
    t.integer "harvest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["harvest_id"], name: "index_frozen_fishes_on_harvest_id"
  end

  create_table "fry_farms", force: :cascade do |t|
    t.string "nit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "harvest_lots", force: :cascade do |t|
    t.integer "lot_id"
    t.integer "harvest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["harvest_id"], name: "index_harvest_lots_on_harvest_id"
    t.index ["lot_id"], name: "index_harvest_lots_on_lot_id"
  end

  create_table "harvest_transports", force: :cascade do |t|
    t.date "transport_date"
    t.string "transport_origin"
    t.string "transport_destination"
    t.integer "harvest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["harvest_id"], name: "index_harvest_transports_on_harvest_id"
  end

  create_table "harvests", force: :cascade do |t|
    t.date "harvest_date"
    t.decimal "final_weight"
    t.integer "production_center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["production_center_id"], name: "index_harvests_on_production_center_id"
  end

  create_table "lot_transports", force: :cascade do |t|
    t.date "transport_date"
    t.string "transport_origin"
    t.string "transport_destination"
    t.integer "lot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lot_id"], name: "index_lot_transports_on_lot_id"
  end

  create_table "lots", force: :cascade do |t|
    t.integer "males"
    t.integer "females"
    t.string "species"
    t.decimal "weight"
    t.date "date"
    t.integer "fry_farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fry_farm_id"], name: "index_lots_on_fry_farm_id"
  end

  create_table "production_centers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.string "role", default: "user", null: false
    t.datetime "last_login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
