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

ActiveRecord::Schema.define(version: 20141105172035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devices", force: true do |t|
    t.text     "name"
    t.text     "fqdn"
    t.text     "platform"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gigabit_ethernets", force: true do |t|
    t.integer  "device_id"
    t.text     "name"
    t.text     "description"
    t.text     "speed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gigabit_ethernets", ["device_id"], name: "index_gigabit_ethernets_on_device_id", using: :btree

  create_table "ipv4s", force: true do |t|
    t.integer  "gigabit_ethernet_id"
    t.text     "address"
    t.boolean  "primary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ipv4s", ["gigabit_ethernet_id"], name: "index_ipv4s_on_gigabit_ethernet_id", using: :btree

  create_table "ipv6s", force: true do |t|
    t.integer  "gigabit_ethernet_id"
    t.text     "address"
    t.boolean  "primary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ipv6s", ["gigabit_ethernet_id"], name: "index_ipv6s_on_gigabit_ethernet_id", using: :btree

end
