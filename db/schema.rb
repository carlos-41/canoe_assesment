# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_28_183153) do
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "duplicate_fund_warnings", force: :cascade do |t|
    t.string "message"
    t.bigint "fund_id_1"
    t.bigint "fund_id_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fund_managers", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_fund_managers_on_company_id"
  end

  create_table "funds", force: :cascade do |t|
    t.string "name"
    t.integer "start_year"
    t.text "aliases"
    t.integer "fund_manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fund_manager_id"], name: "index_funds_on_fund_manager_id"
  end

end
