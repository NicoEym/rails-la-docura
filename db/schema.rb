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

ActiveRecord::Schema.define(version: 2020_08_07_235300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cake_ingredients", force: :cascade do |t|
    t.bigint "customized_cake_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customized_cake_id"], name: "index_cake_ingredients_on_customized_cake_id"
    t.index ["ingredient_id"], name: "index_cake_ingredients_on_ingredient_id"
  end

  create_table "customized_cakes", force: :cascade do |t|
    t.date "delivery_date"
    t.float "price"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "validated", default: false, null: false
  end

  create_table "ingredient_categories", force: :cascade do |t|
    t.string "name"
    t.integer "how_many_items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "ingredient_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_category_id"], name: "index_ingredients_on_ingredient_category_id"
  end

  create_table "standard_cakes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cake_ingredients", "customized_cakes"
  add_foreign_key "cake_ingredients", "ingredients"
  add_foreign_key "ingredients", "ingredient_categories"
end
