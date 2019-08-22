require "application_system_test_case"

class TestRecordsTest < ApplicationSystemTestCase
  setup do
    @test_record = test_records(:one)
  end

  test "visiting the index" do
    visit test_records_url
    assert_selector "h1", text: "Test Records"
  end

  test "creating a Test record" do
    visit test_records_url
    click_on "New Test Record"

    fill_in "Country", with: @test_record.country
    fill_in "Email", with: @test_record.email
    fill_in "Link", with: @test_record.link
    fill_in "Name of policy", with: @test_record.name_of_policy
    fill_in "Phone", with: @test_record.phone
    fill_in "Realized net costs", with: @test_record.realized_net_costs
    fill_in "Single policy or group of policies", with: @test_record.single_policy_or_group_of_policies
    fill_in "Total ght emissions reductions in 2020 kt co2eq per year", with: @test_record.total_ght_emissions_reductions_in_2020_kt_co2eq_per_year
    fill_in "Type of policy instrument", with: @test_record.type_of_policy_instrument
    click_on "Create Test record"

    assert_text "Test record was successfully created"
    click_on "Back"
  end

  test "updating a Test record" do
    visit test_records_url
    click_on "Edit", match: :first

    fill_in "Country", with: @test_record.country
    fill_in "Email", with: @test_record.email
    fill_in "Link", with: @test_record.link
    fill_in "Name of policy", with: @test_record.name_of_policy
    fill_in "Phone", with: @test_record.phone
    fill_in "Realized net costs", with: @test_record.realized_net_costs
    fill_in "Single policy or group of policies", with: @test_record.single_policy_or_group_of_policies
    fill_in "Total ght emissions reductions in 2020 kt co2eq per year", with: @test_record.total_ght_emissions_reductions_in_2020_kt_co2eq_per_year
    fill_in "Type of policy instrument", with: @test_record.type_of_policy_instrument
    click_on "Update Test record"

    assert_text "Test record was successfully updated"
    click_on "Back"
  end

  test "destroying a Test record" do
    visit test_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test record was successfully destroyed"
  end
end
