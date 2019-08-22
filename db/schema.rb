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

  create_table "policies", force: :cascade do |t|
    t.string "country"
    t.string "link"
    t.string "name_of_policy_or_measure"
    t.string "single_policy_or_measure_or_group_of_measures"
    t.string "type_of_policy_instrument"
    t.string "status_of_implementation"
    t.string "policy_impacting_eu_ets"
    t.string "esd_or_lulucf_emissions"
    t.string "sectors_affected"
    t.string "objectives"
    t.float "total_ghg_emissions_reductions_in_2020_kt_co2eq_y"
    t.float "total_ghg_emissions_reductions_in_2030_kt_co2eq_y"
    t.string "jurisdiction"
    t.string "agency"
    t.integer "date_effective"
    t.string "is_the_policy_or_measure_related_to_a_union_policy?"
    t.string "related_union_policy"
    t.string "ghgs_affected"
    t.string "projection_scenario_in_which_the_policy_or_measure_is_included"
    t.string "link_to_national_report"
    t.string "description"
    t.string "quantified_objective"
    t.integer "implementation_period_finish"
    t.string "indicator_used_to_monitor_and_evaluate_progress_over_time"
    t.string "general_comment"
    t.string "main_reference"
    t.string "url_to_main_reference"
    t.float "ghg_emissions_reductions_eu_ets_in_2020_kt_co2eq_y"
    t.float "ghg_emissions_reductions_esd_in_2020_kt_co2eq_y"
    t.float "ghg_emissions_reductions_eu_ets_in_2025_kt_co2eq_y"
    t.float "ghg_emissions_reductions_esd_in_2025_kt_co2eq_y"
    t.float "total_ghg_emissions_reductions_in_2025_kt_co2eq_y"
    t.float "ghg_emissions_reductions_eu_ets_in_2030_kt_co2eq_y"
    t.float "ghg_emissions_reductions_esd_in_2030_kt_co2eq_y"
    t.float "ghg_emissions_reductions_eu_ets_in_2035_kt_co2eq_y"
    t.float "ghg_emissions_reductions_esd_in_2035_kt_co2eq_y"
    t.float "total_ghg_emissions_reductions_in_2035_kt_co2eq_y"
    t.string "reference_for_ex_ante_assessment"
    t.string "web_link_for_ex_ante_assessment"
    t.integer "year_for_which_reduction_applies_ex_post"
    t.float "average_ex_post_emission_reduction_kt_co2eq_y"
    t.string "explanation_of_the_basis_for_the_mitigation_estimates"
    t.string "factors_affected_by_the_policy_or_measure"
    t.string "reference_for_ex_post_assessment"
    t.string "web_link_for_ex_post_assessment"
    t.float "projected_costs_eur_per_tonne_co2eq_reduced_sequestered"
    t.float "projected_absolute_costs_per_year_eur"
    t.integer "year_projected_cost_has_been_calculated_for"
    t.integer "price_reference_year_projected_costs"
    t.float "projected_benefits_eur_per_tonne_co2eq_reduced_sequestered"
    t.float "projected_absolute_benefit_per_year_eur"
    t.float "projected_net_costs_eur_per_tonne_co2eq_reduced_sequestered"
    t.float "projected_net_cost_per_year_eur"
    t.string "description_of_projected_cost_estimates"
    t.string "reference_for_projected_costs_and_benefits"
    t.string "web_link_for_projected_costs_and_benefits"
    t.float "realised_costs__eur_per_tonne_co2eq_reduced_sequestered"
    t.float "realised_absolute_costs_per_year_eur"
    t.integer "year_realised_cost_has_been_calculated_for"
    t.float "price_reference_year_realised_costs"
    t.float "realised_benefits_eur_per_tonne_co2eq_reduced_sequestered"
    t.float "realised_absolute_benefit_per_year_eur"
    t.float "realised_net_costs_eur_per_tonne_co2eq_reduced_sequestered"
    t.float "realised_net_cost_per_year_eur"
    t.string "description_of_realised_cost_estimates"
    t.string "reference_for_realised_costs_and_benefits"
    t.string "web_link_for_realised_costs_and_benefits"
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
