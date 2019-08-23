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

ActiveRecord::Schema.define(version: 2019_08_23_155159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "policies", force: :cascade do |t|
    t.string "name"
    t.string "data_source"
    t.string "world_region"
    t.string "country"
    t.string "country_region"
    t.string "city"
    t.string "link"
    t.string "jurisdiction"
    t.string "agency"
    t.integer "policy_written_year"
    t.integer "policy_implementation_period_start_year"
    t.integer "policy_implementation_period_end_year"
    t.string "policy_status"
    t.string "policy_type"
    t.string "policy_target"
    t.string "description"
    t.string "ghgs_affected"
    t.boolean "related_to_eu_policy_boolean"
    t.string "related_to_eu_policy"
    t.string "impact_on_eu_ets_esd_or_lulucf_emissions"
    t.float "total_ghg_emissions_reductions_in_2020"
    t.float "total_ghg_emissions_reductions_in_2030"
    t.boolean "related_to_neeap_policy_boolean"
    t.string "related_to_neeap_policy"
    t.string "impact_evaluation"
    t.string "policy_financing_quantity"
    t.integer "policy_financing_period_start"
    t.integer "policy_financing_period_end"
    t.float "percent_private_funded"
    t.string "related_documents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "test_records", force: :cascade do |t|
    t.string "country"
    t.string "link"
    t.string "email"
    t.string "phone"
    t.string "name_of_policy"
    t.string "single_policy_or_group_of_policies"
    t.string "type_of_policy_instrument"
    t.float "total_ght_emissions_reductions_in_2020_kt_co2eq_per_year"
    t.float "realized_net_costs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
