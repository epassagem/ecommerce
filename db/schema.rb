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

ActiveRecord::Schema.define(version: 20140115130758) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name",                   default: "", null: false
    t.integer  "doc1",                   default: 0,  null: false
    t.string   "doc2"
    t.integer  "phone_area_code",        default: 0,  null: false
    t.integer  "phone_number",           default: 0,  null: false
    t.integer  "cell"
    t.date     "date_born",                           null: false
    t.string   "sex",                    default: "", null: false
    t.boolean  "news",                                null: false
    t.string   "street",                 default: "", null: false
    t.integer  "number",                 default: 0,  null: false
    t.string   "complement"
    t.string   "district",               default: "", null: false
    t.string   "city",                   default: "", null: false
    t.string   "state",                  default: "", null: false
    t.integer  "postal_code",            default: 0,  null: false
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

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id"
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id"

  create_table "ordem_compras", force: true do |t|
    t.integer  "order_id"
    t.string   "name"
    t.string   "email"
    t.string   "address_zipcode"
    t.string   "address_street"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "address_neighbourhood"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_country"
    t.string   "phone_area_code"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "name"
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "adress"
    t.string   "email"
    t.integer  "client_id"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",       precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
