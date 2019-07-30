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

ActiveRecord::Schema.define(version: 20190729232518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "summaries", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "ic"
    t.string "management_organization"
    t.datetime "start_date"
    t.string "size"
    t.string "percent_complete"
    t.string "incident_type"
    t.string "cause"
    t.string "suppression_strategy"
    t.string "complexity"
    t.date "date"
    t.string "prepared_by"
    t.string "approved_by"
    t.string "primary_agency"
    t.string "state"
    t.string "county"
    t.string "city"
    t.string "jurisdiction"
    t.string "ownership"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.string "area_description"
    t.text "fire_behavior"
    t.text "narrative"
    t.text "fuel_type"
    t.text "damage_assessment"
    t.string "injuries"
    t.text "threat_remark"
    t.text "weather"
    t.text "projected_spread_12"
    t.text "projected_spread_24"
    t.text "projected_spread_48"
    t.text "projected_spread_72"
    t.text "projected_spread_after"
    t.text "stragetic_objectives"
    t.text "threat_12"
    t.text "threat_24"
    t.text "threat_48"
    t.text "threat_72"
    t.text "threat_after"
    t.text "critical_needs_12"
    t.text "critical_needs_24"
    t.text "critical_needs_48"
    t.text "critical_needs_72"
    t.text "critical_needs_after"
    t.text "strategic_discussion"
    t.text "tomorrows_plan"
    t.date "anticipated_completion"
    t.decimal "cost"
    t.text "remarks"
    t.text "resources"
    t.text "cooperators"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
