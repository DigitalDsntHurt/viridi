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

ActiveRecord::Schema.define(version: 2019_08_22_212848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
