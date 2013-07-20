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

ActiveRecord::Schema.define(version: 20130720185855) do

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quantities", force: true do |t|
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
  end

  add_index "ratings", ["recipe_id"], name: "index_ratings_on_recipe_id"

  create_table "recipe_ingredients", force: true do |t|
    t.integer  "recipe_id",     null: false
    t.integer  "ingredient_id", null: false
    t.float    "amount",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipe_ingredients", ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
  add_index "recipe_ingredients", ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"

  create_table "recipes", force: true do |t|
    t.integer  "rating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "user_id"
  end

  add_index "recipes", ["name"], name: "index_recipes_on_name"
  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "recipes_steps", id: false, force: true do |t|
    t.integer "recipe_id", null: false
    t.integer "step_id",   null: false
  end

  add_index "recipes_steps", ["recipe_id"], name: "index_recipes_steps_on_recipe_id"
  add_index "recipes_steps", ["step_id"], name: "index_recipes_steps_on_step_id"

  create_table "steps", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
