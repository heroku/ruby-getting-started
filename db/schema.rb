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

ActiveRecord::Schema[8.0].define(version: 2014_07_07_111715) do
  create_schema "_heroku"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pg_stat_statements"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.integer "company_id"
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.date "service_date"
    t.string "status"
    t.bigint "homeowner_id", null: false
    t.datetime "completed_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "company_id"
    t.integer "date_range", default: 1, null: false
    t.string "state"
    t.index ["company_id"], name: "index_appointments_on_company_id"
    t.index ["homeowner_id"], name: "index_appointments_on_homeowner_id"
  end

  create_table "auctions", force: :cascade do |t|
    t.integer "homeowner_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.date "service_date"
    t.index ["homeowner_id"], name: "index_auctions_on_homeowner_id"
  end

  create_table "bids", force: :cascade do |t|
    t.bigint "auction_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "bid_amount"
    t.boolean "chosen"
    t.index ["auction_id"], name: "index_bids_on_auction_id"
    t.index ["company_id"], name: "index_bids_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.integer "service_range"
    t.string "status"
    t.string "company_address"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "state"
    t.integer "service_area"
  end

  create_table "disputes", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "homeowner_id", null: false
    t.bigint "appointment_id", null: false
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["appointment_id"], name: "index_disputes_on_appointment_id"
    t.index ["company_id"], name: "index_disputes_on_company_id"
    t.index ["homeowner_id"], name: "index_disputes_on_homeowner_id"
  end

  create_table "lawn_profiles", force: :cascade do |t|
    t.string "address"
    t.string "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "homeowner_id"
  end

  create_table "requested_appointment_date_changes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "appointment_id"
    t.date "requested_date"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["appointment_id"], name: "index_requested_appointment_date_changes_on_appointment_id"
    t.index ["user_id"], name: "index_requested_appointment_date_changes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: ""
    t.string "name"
    t.string "address"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "company_id"
    t.string "type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "invitation_token"
    t.datetime "invitation_created_at", precision: nil
    t.datetime "invitation_sent_at", precision: nil
    t.datetime "invitation_accepted_at", precision: nil
    t.integer "invitation_limit"
    t.integer "invited_by_id"
    t.string "invited_by_type"
    t.integer "lawn_profile_id"
    t.integer "zip_code"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "widgets", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.text "description"
    t.string "name"
    t.integer "stock"
    t.datetime "updated_at", precision: nil, null: false
  end
end
