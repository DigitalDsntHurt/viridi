require 'test_helper'

class PoliciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get policies_url
    assert_response :success
  end

  test "should get new" do
    get new_policy_url
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post policies_url, params: { policy: { agency: @policy.agency, city: @policy.city, country: @policy.country, country_region: @policy.country_region, data_source: @policy.data_source, description: @policy.description, ghgs_affected: @policy.ghgs_affected, impact_evaluation: @policy.impact_evaluation, impact_on_eu_ets_esd_or_lulucf_emissions: @policy.impact_on_eu_ets_esd_or_lulucf_emissions, jurisdiction: @policy.jurisdiction, link: @policy.link, name: @policy.name, percent_private_funded: @policy.percent_private_funded, policy_financing_period_end: @policy.policy_financing_period_end, policy_financing_period_start: @policy.policy_financing_period_start, policy_financing_quantity: @policy.policy_financing_quantity, policy_implementation_period_end_year: @policy.policy_implementation_period_end_year, policy_implementation_period_start_year: @policy.policy_implementation_period_start_year, policy_status: @policy.policy_status, policy_target: @policy.policy_target, policy_type: @policy.policy_type, policy_written_year: @policy.policy_written_year, related_documents: @policy.related_documents, related_to_eu_policy: @policy.related_to_eu_policy, related_to_eu_policy_boolean: @policy.related_to_eu_policy_boolean, related_to_neeap_policy: @policy.related_to_neeap_policy, related_to_neeap_policy_boolean: @policy.related_to_neeap_policy_boolean, total_ghg_emissions_reductions_in_2020: @policy.total_ghg_emissions_reductions_in_2020, total_ghg_emissions_reductions_in_2030: @policy.total_ghg_emissions_reductions_in_2030, world_region: @policy.world_region } }
    end

    assert_redirected_to policy_url(Policy.last)
  end

  test "should show policy" do
    get policy_url(@policy)
    assert_response :success
  end

  test "should get edit" do
    get edit_policy_url(@policy)
    assert_response :success
  end

  test "should update policy" do
    patch policy_url(@policy), params: { policy: { agency: @policy.agency, city: @policy.city, country: @policy.country, country_region: @policy.country_region, data_source: @policy.data_source, description: @policy.description, ghgs_affected: @policy.ghgs_affected, impact_evaluation: @policy.impact_evaluation, impact_on_eu_ets_esd_or_lulucf_emissions: @policy.impact_on_eu_ets_esd_or_lulucf_emissions, jurisdiction: @policy.jurisdiction, link: @policy.link, name: @policy.name, percent_private_funded: @policy.percent_private_funded, policy_financing_period_end: @policy.policy_financing_period_end, policy_financing_period_start: @policy.policy_financing_period_start, policy_financing_quantity: @policy.policy_financing_quantity, policy_implementation_period_end_year: @policy.policy_implementation_period_end_year, policy_implementation_period_start_year: @policy.policy_implementation_period_start_year, policy_status: @policy.policy_status, policy_target: @policy.policy_target, policy_type: @policy.policy_type, policy_written_year: @policy.policy_written_year, related_documents: @policy.related_documents, related_to_eu_policy: @policy.related_to_eu_policy, related_to_eu_policy_boolean: @policy.related_to_eu_policy_boolean, related_to_neeap_policy: @policy.related_to_neeap_policy, related_to_neeap_policy_boolean: @policy.related_to_neeap_policy_boolean, total_ghg_emissions_reductions_in_2020: @policy.total_ghg_emissions_reductions_in_2020, total_ghg_emissions_reductions_in_2030: @policy.total_ghg_emissions_reductions_in_2030, world_region: @policy.world_region } }
    assert_redirected_to policy_url(@policy)
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete policy_url(@policy)
    end

    assert_redirected_to policies_url
  end
end
