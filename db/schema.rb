# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_18_171704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "street_number"
    t.string "neighbourhood"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "address_holder_type"
    t.bigint "address_holder_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["address_holder_type", "address_holder_id"], name: "index_addresses_on_address_holder_type_and_address_holder_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "play_space_id"
    t.integer "minimum_capacity"
    t.integer "maximum_capacity"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_fee_per_kid_cents", default: 0, null: false
    t.index ["play_space_id"], name: "index_appointments_on_play_space_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "play_session_id"
    t.bigint "user_id"
    t.string "name_of_kid"
    t.string "gender_of_kid"
    t.integer "age_of_kid"
    t.text "comment"
    t.integer "amount_cents", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sum_fee_cents", default: 0, null: false
    t.string "status", default: "pending", null: false
    t.string "checkout_session_id"
    t.index ["play_session_id"], name: "index_bookings_on_play_session_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "jolly_day_participants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "child_name"
    t.integer "child_age"
    t.string "email_address"
    t.string "phone_number"
    t.boolean "newsletter_signup"
    t.bigint "jolly_day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jolly_day_id"], name: "index_jolly_day_participants_on_jolly_day_id"
  end

  create_table "jolly_days", force: :cascade do |t|
    t.string "name"
    t.datetime "start"
    t.datetime "end"
    t.integer "maximum_capacity"
    t.integer "minimum_age"
    t.integer "maximum_age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kids", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "d_o_b"
    t.string "gender"
    t.text "allergies"
    t.text "special_needs_requirements"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_kids_on_user_id"
  end

  create_table "play_sessions", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "user_id"
    t.string "name"
    t.text "description"
    t.text "requirements"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "worker_fee_per_kid_cents", default: 0, null: false
    t.index ["appointment_id"], name: "index_play_sessions_on_appointment_id"
    t.index ["user_id"], name: "index_play_sessions_on_user_id"
  end

  create_table "play_spaces", force: :cascade do |t|
    t.bigint "user_id"
    t.text "facilities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street"
    t.string "street_number"
    t.string "neighbourhood"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.index ["user_id"], name: "index_play_spaces_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "stars"
    t.bigint "reviewer_id"
    t.bigint "reviewee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reviewee_id"], name: "index_reviews_on_reviewee_id"
    t.index ["reviewer_id"], name: "index_reviews_on_reviewer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "first_name"
    t.string "last_name"
    t.text "bio"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "play_spaces"
  add_foreign_key "bookings", "play_sessions"
  add_foreign_key "bookings", "users"
  add_foreign_key "jolly_day_participants", "jolly_days"
  add_foreign_key "play_sessions", "appointments"
  add_foreign_key "play_sessions", "users"
  add_foreign_key "play_spaces", "users"
end
