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

ActiveRecord::Schema.define(version: 20150403035616) do

  create_table "admin_role_refs", force: true do |t|
    t.integer  "admin_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_role_refs", ["admin_id"], name: "index_admin_role_refs_on_admin_id", using: :btree
  add_index "admin_role_refs", ["role_id"], name: "index_admin_role_refs_on_role_id", using: :btree

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "content"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advertisements", force: true do |t|
    t.string   "pic_str"
    t.string   "link_str"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "status"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_code_details", force: true do |t|
    t.integer  "province_id"
    t.string   "name"
    t.string   "area_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "area_code_details", ["province_id"], name: "index_area_code_details_on_province_id", using: :btree

  create_table "auths", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "auths", ["parent_id"], name: "index_auths_on_parent_id", using: :btree

  create_table "basic_charges", force: true do |t|
    t.integer  "tariff_standard_id"
    t.float    "s_charges",          limit: 24
    t.float    "c_charges",          limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "basic_charges", ["tariff_standard_id"], name: "index_basic_charges_on_tariff_standard_id", using: :btree

  create_table "call_caches", force: true do |t|
    t.integer  "user_id"
    t.datetime "begin_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "call_caches", ["user_id"], name: "index_call_caches_on_user_id", using: :btree

  create_table "cfgs", force: true do |t|
    t.float    "give_cost",    limit: 24
    t.string   "company_name"
    t.string   "sales_tel"
    t.string   "service_tel"
    t.string   "gateway"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "user_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["user_id"], name: "index_contacts_on_user_id", using: :btree

  create_table "make_cards", force: true do |t|
    t.integer  "admin_id"
    t.integer  "card_type"
    t.string   "batch"
    t.integer  "card_len"
    t.datetime "time"
    t.float    "card_sum",   limit: 24
    t.integer  "amount"
    t.string   "content"
    t.integer  "giving"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "make_cards", ["admin_id"], name: "index_make_cards_on_admin_id", using: :btree

  create_table "phone_nums", force: true do |t|
    t.integer  "contact_id"
    t.integer  "type"
    t.integer  "is_primary"
    t.string   "attribution"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_nums", ["contact_id"], name: "index_phone_nums_on_contact_id", using: :btree

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pubs", force: true do |t|
    t.string   "title"
    t.integer  "type"
    t.text     "content"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "status"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rechargeable_cards", force: true do |t|
    t.string   "pwd"
    t.integer  "make_card_id"
    t.string   "card_number"
    t.integer  "card_sum"
    t.datetime "effective_time"
    t.integer  "card_type"
    t.datetime "end_time"
    t.string   "content"
    t.integer  "giving"
    t.integer  "failure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rechargeable_cards", ["make_card_id"], name: "index_rechargeable_cards_on_make_card_id", using: :btree

  create_table "rechargeable_records", force: true do |t|
    t.integer  "user_id"
    t.datetime "prepaid_time"
    t.float    "balance",      limit: 24
    t.integer  "type"
    t.string   "content"
    t.datetime "end_time"
    t.string   "card_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rechargeable_records", ["user_id"], name: "index_rechargeable_records_on_user_id", using: :btree

  create_table "records", force: true do |t|
    t.integer  "phone_num_id"
    t.datetime "time"
    t.float    "cost",         limit: 24
    t.datetime "start_time"
    t.integer  "tag"
    t.integer  "user_delete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["phone_num_id"], name: "index_records_on_phone_num_id", using: :btree

  create_table "role_auth_refs", force: true do |t|
    t.integer  "role_id"
    t.integer  "auth_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_auth_refs", ["auth_id"], name: "index_role_auth_refs_on_auth_id", using: :btree
  add_index "role_auth_refs", ["role_id"], name: "index_role_auth_refs_on_role_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "is_admin"
    t.integer  "role_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tariff_standards", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.float    "minus_amount", limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_charges", force: true do |t|
    t.integer  "tariff_standard_id"
    t.float    "s_charges",          limit: 24
    t.float    "c_charges",          limit: 24
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "time_charges", ["tariff_standard_id"], name: "index_time_charges_on_tariff_standard_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "tariff_standard_id"
    t.string   "user_name"
    t.string   "password_digest"
    t.integer  "usr_status"
    t.string   "auth_code"
    t.datetime "auth_code_time"
    t.integer  "dial_way"
    t.integer  "show_num"
    t.string   "area_code"
    t.float    "balance",            limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["tariff_standard_id"], name: "index_users_on_tariff_standard_id", using: :btree

end
