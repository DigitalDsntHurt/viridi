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
    fill_in "City", with: @policy.city
    fill_in "Country", with: @policy.country
    fill_in "Country region", with: @policy.country_region
    fill_in "Data source", with: @policy.data_source
    fill_in "Description", with: @policy.description
    fill_in "Ghgs affected", with: @policy.ghgs_affected
    fill_in "Impact evaluation", with: @policy.impact_evaluation
    fill_in "Impact on eu ets esd or lulucf emissions", with: @policy.impact_on_eu_ets_esd_or_lulucf_emissions
    fill_in "Jurisdiction", with: @policy.jurisdiction
    fill_in "Link", with: @policy.link
    fill_in "Name", with: @policy.name
    fill_in "Percent private funded", with: @policy.percent_private_funded
    fill_in "Policy financing period end", with: @policy.policy_financing_period_end
    fill_in "Policy financing period start", with: @policy.policy_financing_period_start
    fill_in "Policy financing quantity", with: @policy.policy_financing_quantity
    fill_in "Policy implementation period end year", with: @policy.policy_implementation_period_end_year
    fill_in "Policy implementation period start year", with: @policy.policy_implementation_period_start_year
    fill_in "Policy status", with: @policy.policy_status
    fill_in "Policy target", with: @policy.policy_target
    fill_in "Policy type", with: @policy.policy_type
    fill_in "Policy written year", with: @policy.policy_written_year
    fill_in "Related documents", with: @policy.related_documents
    fill_in "Related to eu policy", with: @policy.related_to_eu_policy
    check "Related to eu policy boolean" if @policy.related_to_eu_policy_boolean
    fill_in "Related to neeap policy", with: @policy.related_to_neeap_policy
    check "Related to neeap policy boolean" if @policy.related_to_neeap_policy_boolean
    fill_in "Total ghg emissions reductions in 2020", with: @policy.total_ghg_emissions_reductions_in_2020
    fill_in "Total ghg emissions reductions in 2030", with: @policy.total_ghg_emissions_reductions_in_2030
    fill_in "World region", with: @policy.world_region
    click_on "Create Policy"

    assert_text "Policy was successfully created"
    click_on "Back"
  end

  test "updating a Policy" do
    visit policies_url
    click_on "Edit", match: :first

    fill_in "Agency", with: @policy.agency
    fill_in "City", with: @policy.city
    fill_in "Country", with: @policy.country
    fill_in "Country region", with: @policy.country_region
    fill_in "Data source", with: @policy.data_source
    fill_in "Description", with: @policy.description
    fill_in "Ghgs affected", with: @policy.ghgs_affected
    fill_in "Impact evaluation", with: @policy.impact_evaluation
    fill_in "Impact on eu ets esd or lulucf emissions", with: @policy.impact_on_eu_ets_esd_or_lulucf_emissions
    fill_in "Jurisdiction", with: @policy.jurisdiction
    fill_in "Link", with: @policy.link
    fill_in "Name", with: @policy.name
    fill_in "Percent private funded", with: @policy.percent_private_funded
    fill_in "Policy financing period end", with: @policy.policy_financing_period_end
    fill_in "Policy financing period start", with: @policy.policy_financing_period_start
    fill_in "Policy financing quantity", with: @policy.policy_financing_quantity
    fill_in "Policy implementation period end year", with: @policy.policy_implementation_period_end_year
    fill_in "Policy implementation period start year", with: @policy.policy_implementation_period_start_year
    fill_in "Policy status", with: @policy.policy_status
    fill_in "Policy target", with: @policy.policy_target
    fill_in "Policy type", with: @policy.policy_type
    fill_in "Policy written year", with: @policy.policy_written_year
    fill_in "Related documents", with: @policy.related_documents
    fill_in "Related to eu policy", with: @policy.related_to_eu_policy
    check "Related to eu policy boolean" if @policy.related_to_eu_policy_boolean
    fill_in "Related to neeap policy", with: @policy.related_to_neeap_policy
    check "Related to neeap policy boolean" if @policy.related_to_neeap_policy_boolean
    fill_in "Total ghg emissions reductions in 2020", with: @policy.total_ghg_emissions_reductions_in_2020
    fill_in "Total ghg emissions reductions in 2030", with: @policy.total_ghg_emissions_reductions_in_2030
    fill_in "World region", with: @policy.world_region
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
