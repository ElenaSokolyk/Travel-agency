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

ActiveRecord::Schema.define(version: 20130708120226) do

  create_table "actions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actions", ["category_id"], name: "index_actions_on_category_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "salt"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "surname"
    t.date     "date_of_birth"
    t.string   "passport"
    t.string   "foreign_passport"
    t.string   "tel_number"
    t.string   "address"
  end

  add_index "clients", ["category_id"], name: "index_clients_on_category_id"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "position"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id"

  create_table "orders", force: true do |t|
    t.date     "order_date"
    t.integer  "client_id"
    t.integer  "tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id"
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"
  add_index "orders", ["employee_id"], name: "index_orders_on_employee_id"
  add_index "orders", ["tour_id"], name: "index_orders_on_tour_id"

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file"
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type"

  create_table "tours", force: true do |t|
    t.integer  "direction_id"
    t.integer  "type_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "num_of_places"
  end

  add_index "tours", ["direction_id"], name: "index_tours_on_direction_id"
  add_index "tours", ["type_id"], name: "index_tours_on_type_id"

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
