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

ActiveRecord::Schema.define(version: 2021_10_22_141138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.boolean "dei_enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "company_dei_fields", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "dei_field_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_company_dei_fields_on_company_id"
    t.index ["dei_field_id"], name: "index_company_dei_fields_on_dei_field_id"
  end

  create_table "dei_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dei_field_answers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "dei_field_id", null: false
    t.string "encrypted_answer"
    t.string "encrypted_answer_iv"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dei_field_id"], name: "index_dei_field_answers_on_dei_field_id"
    t.index ["user_id"], name: "index_dei_field_answers_on_user_id"
  end

  create_table "dei_fields", force: :cascade do |t|
    t.string "name"
    t.bigint "dei_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dei_category_id"], name: "index_dei_fields_on_dei_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "company_dei_fields", "companies"
  add_foreign_key "company_dei_fields", "dei_fields"
  add_foreign_key "dei_field_answers", "dei_fields"
  add_foreign_key "dei_field_answers", "users"
  add_foreign_key "dei_fields", "dei_categories"
  add_foreign_key "users", "companies"
end
