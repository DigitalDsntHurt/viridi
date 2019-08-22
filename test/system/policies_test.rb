require "application_system_test_case"

class PoliciesTest < ApplicationSystemTestCase
  setup do
    @policy = policies(:one)
  end

  test "visiting the index" do
    visit policies_url
    assert_selector "h1", text: "Policies"
  end

  test "creating a Policy" do
    visit policies_url
    click_on "New Policy"

    fill_in "Agency", with: @policy.agency
    fill_in "Average ex post emission reduction kt co2eq/y", with: @policy.average_ex_post_emission_reduction_kt_co2eq/y
    fill_in "Country", with: @policy.country
    fill_in "Date effective", with: @policy.date_effective
    fill_in "Description", with: @policy.description
    fill_in "Description of projected cost estimates", with: @policy.description_of_projected_cost_estimates
    fill_in "Description of realised cost estimates", with: @policy.description_of_realised_cost_estimates
    fill_in "Explanation of the basis for the mitigation estimates", with: @policy.explanation_of_the_basis_for_the_mitigation_estimates
    fill_in "Factors affected by the policy or measure", with: @policy.factors_affected_by_the_policy_or_measure
    fill_in "General comment", with: @policy.general_comment
    fill_in "Ghg emissions reductions esd in 2020 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2020_kt_co2eq/y
    fill_in "Ghg emissions reductions esd in 2025 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2025_kt_co2eq/y
    fill_in "Ghg emissions reductions esd in 2030 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2030_kt_co2eq/y
    fill_in "Ghg emissions reductions esd in 2035 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2035_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2020 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2020_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2025 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2025_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2030 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2030_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2035 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2035_kt_co2eq/y
    fill_in "Ghgs affected", with: @policy.ghgs_affected
    fill_in "Implementation period finish", with: @policy.implementation_period_finish
    fill_in "Indicator used to monitor and evaluate progress over time", with: @policy.indicator_used_to_monitor_and_evaluate_progress_over_time
    fill_in "Is the policy or measure related to a union policy?", with: @policy.is_the_policy_or_measure_related_to_a_union_policy?
    fill_in "Jurisdiction", with: @policy.jurisdiction
    fill_in "Link", with: @policy.link
    fill_in "Link to national report", with: @policy.link_to_national_report
    fill_in "Main reference", with: @policy.main_reference
    fill_in "Name of policy or measure", with: @policy.name_of_policy_or_measure
    fill_in "Objectives", with: @policy.objectives
    fill_in "Policy impacting eu ets, esd or lulucf emissions", with: @policy.policy_impacting_eu_ets,_esd_or_lulucf_emissions
    fill_in "Price reference year projected costs", with: @policy.price_reference_year_projected_costs
    fill_in "Price reference year realised costs", with: @policy.price_reference_year_realised_costs
    fill_in "Projected absolute benefit per year eur", with: @policy.projected_absolute_benefit_per_year_eur
    fill_in "Projected absolute costs per year eur", with: @policy.projected_absolute_costs_per_year_eur
    fill_in "Projected benefits eur per tonne co2eq reduced/ sequestered", with: @policy.projected_benefits_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Projected costs eur per tonne co2eq reduced/ sequestered", with: @policy.projected_costs_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Projected net cost per year eur", with: @policy.projected_net_cost_per_year_eur
    fill_in "Projected net costs eur per tonne co2eq reduced/ sequestered", with: @policy.projected_net_costs_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Projection scenario in which the policy or measure is included", with: @policy.projection_scenario_in_which_the_policy_or_measure_is_included
    fill_in "Quantified objective", with: @policy.quantified_objective
    fill_in "Realised absolute benefit per year eur", with: @policy.realised_absolute_benefit_per_year_eur
    fill_in "Realised absolute costs per year eur", with: @policy.realised_absolute_costs_per_year_eur
    fill_in "Realised benefits eur per tonne co2eq reduced/ sequestered", with: @policy.realised_benefits_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Realised costs  eur per tonne co2eq reduced/ sequestered", with: @policy.realised_costs__eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Realised net cost per year eur", with: @policy.realised_net_cost_per_year_eur
    fill_in "Realised net costs eur per tonne co2eq reduced/ sequestered", with: @policy.realised_net_costs_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Reference for ex-ante assessment", with: @policy.reference_for_ex-ante_assessment
    fill_in "Reference for ex-post assessment", with: @policy.reference_for_ex-post_assessment
    fill_in "Reference for projected costs and benefits", with: @policy.reference_for_projected_costs_and_benefits
    fill_in "Reference for realised costs and benefits", with: @policy.reference_for_realised_costs_and_benefits
    fill_in "Related union policy", with: @policy.related_union_policy
    fill_in "Sectors affected", with: @policy.sectors_affected
    fill_in "Single policy or measure or group of measures", with: @policy.single_policy_or_measure_or_group_of_measures
    fill_in "Status of implementation", with: @policy.status_of_implementation
    fill_in "Total ghg emissions reductions in 2020 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2020_kt_co2eq/y
    fill_in "Total ghg emissions reductions in 2025 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2025_kt_co2eq/y
    fill_in "Total ghg emissions reductions in 2030 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2030_kt_co2eq/y
    fill_in "Total ghg emissions reductions in 2035 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2035_kt_co2eq/y
    fill_in "Type of policy instrument", with: @policy.type_of_policy_instrument
    fill_in "Url to main reference", with: @policy.url_to_main_reference
    fill_in "Web link for ex-ante assessment", with: @policy.web_link_for_ex-ante_assessment
    fill_in "Web link for ex-post assessment", with: @policy.web_link_for_ex-post_assessment
    fill_in "Web link for projected costs and benefits", with: @policy.web_link_for_projected_costs_and_benefits
    fill_in "Web link for realised costs and benefits", with: @policy.web_link_for_realised_costs_and_benefits
    fill_in "Year for which reduction applies ex post", with: @policy.year_for_which_reduction_applies_ex_post
    fill_in "Year projected cost has been calculated for", with: @policy.year_projected_cost_has_been_calculated_for
    fill_in "Year realised cost has been calculated for", with: @policy.year_realised_cost_has_been_calculated_for
    click_on "Create Policy"

    assert_text "Policy was successfully created"
    click_on "Back"
  end

  test "updating a Policy" do
    visit policies_url
    click_on "Edit", match: :first

    fill_in "Agency", with: @policy.agency
    fill_in "Average ex post emission reduction kt co2eq/y", with: @policy.average_ex_post_emission_reduction_kt_co2eq/y
    fill_in "Country", with: @policy.country
    fill_in "Date effective", with: @policy.date_effective
    fill_in "Description", with: @policy.description
    fill_in "Description of projected cost estimates", with: @policy.description_of_projected_cost_estimates
    fill_in "Description of realised cost estimates", with: @policy.description_of_realised_cost_estimates
    fill_in "Explanation of the basis for the mitigation estimates", with: @policy.explanation_of_the_basis_for_the_mitigation_estimates
    fill_in "Factors affected by the policy or measure", with: @policy.factors_affected_by_the_policy_or_measure
    fill_in "General comment", with: @policy.general_comment
    fill_in "Ghg emissions reductions esd in 2020 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2020_kt_co2eq/y
    fill_in "Ghg emissions reductions esd in 2025 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2025_kt_co2eq/y
    fill_in "Ghg emissions reductions esd in 2030 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2030_kt_co2eq/y
    fill_in "Ghg emissions reductions esd in 2035 kt co2eq/y", with: @policy.ghg_emissions_reductions_esd_in_2035_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2020 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2020_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2025 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2025_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2030 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2030_kt_co2eq/y
    fill_in "Ghg emissions reductions eu ets in 2035 kt co2eq/y", with: @policy.ghg_emissions_reductions_eu_ets_in_2035_kt_co2eq/y
    fill_in "Ghgs affected", with: @policy.ghgs_affected
    fill_in "Implementation period finish", with: @policy.implementation_period_finish
    fill_in "Indicator used to monitor and evaluate progress over time", with: @policy.indicator_used_to_monitor_and_evaluate_progress_over_time
    fill_in "Is the policy or measure related to a union policy?", with: @policy.is_the_policy_or_measure_related_to_a_union_policy?
    fill_in "Jurisdiction", with: @policy.jurisdiction
    fill_in "Link", with: @policy.link
    fill_in "Link to national report", with: @policy.link_to_national_report
    fill_in "Main reference", with: @policy.main_reference
    fill_in "Name of policy or measure", with: @policy.name_of_policy_or_measure
    fill_in "Objectives", with: @policy.objectives
    fill_in "Policy impacting eu ets, esd or lulucf emissions", with: @policy.policy_impacting_eu_ets,_esd_or_lulucf_emissions
    fill_in "Price reference year projected costs", with: @policy.price_reference_year_projected_costs
    fill_in "Price reference year realised costs", with: @policy.price_reference_year_realised_costs
    fill_in "Projected absolute benefit per year eur", with: @policy.projected_absolute_benefit_per_year_eur
    fill_in "Projected absolute costs per year eur", with: @policy.projected_absolute_costs_per_year_eur
    fill_in "Projected benefits eur per tonne co2eq reduced/ sequestered", with: @policy.projected_benefits_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Projected costs eur per tonne co2eq reduced/ sequestered", with: @policy.projected_costs_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Projected net cost per year eur", with: @policy.projected_net_cost_per_year_eur
    fill_in "Projected net costs eur per tonne co2eq reduced/ sequestered", with: @policy.projected_net_costs_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Projection scenario in which the policy or measure is included", with: @policy.projection_scenario_in_which_the_policy_or_measure_is_included
    fill_in "Quantified objective", with: @policy.quantified_objective
    fill_in "Realised absolute benefit per year eur", with: @policy.realised_absolute_benefit_per_year_eur
    fill_in "Realised absolute costs per year eur", with: @policy.realised_absolute_costs_per_year_eur
    fill_in "Realised benefits eur per tonne co2eq reduced/ sequestered", with: @policy.realised_benefits_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Realised costs  eur per tonne co2eq reduced/ sequestered", with: @policy.realised_costs__eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Realised net cost per year eur", with: @policy.realised_net_cost_per_year_eur
    fill_in "Realised net costs eur per tonne co2eq reduced/ sequestered", with: @policy.realised_net_costs_eur_per_tonne_co2eq_reduced/_sequestered
    fill_in "Reference for ex-ante assessment", with: @policy.reference_for_ex-ante_assessment
    fill_in "Reference for ex-post assessment", with: @policy.reference_for_ex-post_assessment
    fill_in "Reference for projected costs and benefits", with: @policy.reference_for_projected_costs_and_benefits
    fill_in "Reference for realised costs and benefits", with: @policy.reference_for_realised_costs_and_benefits
    fill_in "Related union policy", with: @policy.related_union_policy
    fill_in "Sectors affected", with: @policy.sectors_affected
    fill_in "Single policy or measure or group of measures", with: @policy.single_policy_or_measure_or_group_of_measures
    fill_in "Status of implementation", with: @policy.status_of_implementation
    fill_in "Total ghg emissions reductions in 2020 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2020_kt_co2eq/y
    fill_in "Total ghg emissions reductions in 2025 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2025_kt_co2eq/y
    fill_in "Total ghg emissions reductions in 2030 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2030_kt_co2eq/y
    fill_in "Total ghg emissions reductions in 2035 kt co2eq/y", with: @policy.total_ghg_emissions_reductions_in_2035_kt_co2eq/y
    fill_in "Type of policy instrument", with: @policy.type_of_policy_instrument
    fill_in "Url to main reference", with: @policy.url_to_main_reference
    fill_in "Web link for ex-ante assessment", with: @policy.web_link_for_ex-ante_assessment
    fill_in "Web link for ex-post assessment", with: @policy.web_link_for_ex-post_assessment
    fill_in "Web link for projected costs and benefits", with: @policy.web_link_for_projected_costs_and_benefits
    fill_in "Web link for realised costs and benefits", with: @policy.web_link_for_realised_costs_and_benefits
    fill_in "Year for which reduction applies ex post", with: @policy.year_for_which_reduction_applies_ex_post
    fill_in "Year projected cost has been calculated for", with: @policy.year_projected_cost_has_been_calculated_for
    fill_in "Year realised cost has been calculated for", with: @policy.year_realised_cost_has_been_calculated_for
    click_on "Update Policy"

    assert_text "Policy was successfully updated"
    click_on "Back"
  end

  test "destroying a Policy" do
    visit policies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Policy was successfully destroyed"
  end
end
