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

ActiveRecord::Schema[7.1].define(version: 2024_06_24_134534) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bond_yields", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_bond_yields_on_economic_indicator_id"
  end

  create_table "cpis", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_cpis_on_economic_indicator_id"
  end

  create_table "economic_indicators", force: :cascade do |t|
    t.string "indicator_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ffrs", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_ffrs_on_economic_indicator_id"
  end

  create_table "gdps", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_gdps_on_economic_indicator_id"
  end

  create_table "industrial_production_indices", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_industrial_production_indices_on_economic_indicator_id"
  end

  create_table "retail_sales", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_retail_sales_on_economic_indicator_id"
  end

  create_table "unemployment_rates", force: :cascade do |t|
    t.bigint "economic_indicator_id", null: false
    t.float "actual_value"
    t.float "forecast_value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economic_indicator_id"], name: "index_unemployment_rates_on_economic_indicator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bond_yields", "economic_indicators"
  add_foreign_key "cpis", "economic_indicators"
  add_foreign_key "ffrs", "economic_indicators"
  add_foreign_key "gdps", "economic_indicators"
  add_foreign_key "industrial_production_indices", "economic_indicators"
  add_foreign_key "retail_sales", "economic_indicators"
  add_foreign_key "unemployment_rates", "economic_indicators"
end
