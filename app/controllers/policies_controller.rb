class PoliciesController < ApplicationController
  before_action :set_policy, only: [:show, :edit, :update, :destroy]

  # GET /policies
  # GET /policies.json
  def index
    @policies = Policy.all
  end

  # GET /policies/1
  # GET /policies/1.json
  def show
  end

  # GET /policies/new
  def new
    @policy = Policy.new
  end

  # GET /policies/1/edit
  def edit
  end

  # POST /policies
  # POST /policies.json
  def create
    @policy = Policy.new(policy_params)

    respond_to do |format|
      if @policy.save
        format.html { redirect_to @policy, notice: 'Policy was successfully created.' }
        format.json { render :show, status: :created, location: @policy }
      else
        format.html { render :new }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policies/1
  # PATCH/PUT /policies/1.json
  def update
    respond_to do |format|
      if @policy.update(policy_params)
        format.html { redirect_to @policy, notice: 'Policy was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy }
      else
        format.html { render :edit }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policies/1
  # DELETE /policies/1.json
  def destroy
    @policy.destroy
    respond_to do |format|
      format.html { redirect_to policies_url, notice: 'Policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy
      @policy = Policy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_params
      params.require(:policy).permit(:country, :link, :name_of_policy_or_measure, :single_policy_or_measure_or_group_of_measures, :type_of_policy_instrument, :status_of_implementation, :policy_impacting_eu_ets,_esd_or_lulucf_emissions, :sectors_affected, :objectives, :total_ghg_emissions_reductions_in_2020_kt_co2eq/y, :total_ghg_emissions_reductions_in_2030_kt_co2eq/y, :jurisdiction, :agency, :date_effective, :is_the_policy_or_measure_related_to_a_union_policy?, :related_union_policy, :ghgs_affected, :projection_scenario_in_which_the_policy_or_measure_is_included, :link_to_national_report, :description, :quantified_objective, :implementation_period_finish, :indicator_used_to_monitor_and_evaluate_progress_over_time, :general_comment, :main_reference, :url_to_main_reference, :ghg_emissions_reductions_eu_ets_in_2020_kt_co2eq/y, :ghg_emissions_reductions_esd_in_2020_kt_co2eq/y, :ghg_emissions_reductions_eu_ets_in_2025_kt_co2eq/y, :ghg_emissions_reductions_esd_in_2025_kt_co2eq/y, :total_ghg_emissions_reductions_in_2025_kt_co2eq/y, :ghg_emissions_reductions_eu_ets_in_2030_kt_co2eq/y, :ghg_emissions_reductions_esd_in_2030_kt_co2eq/y, :ghg_emissions_reductions_eu_ets_in_2035_kt_co2eq/y, :ghg_emissions_reductions_esd_in_2035_kt_co2eq/y, :total_ghg_emissions_reductions_in_2035_kt_co2eq/y, :reference_for_ex-ante_assessment, :web_link_for_ex-ante_assessment, :year_for_which_reduction_applies_ex_post, :average_ex_post_emission_reduction_kt_co2eq/y, :explanation_of_the_basis_for_the_mitigation_estimates, :factors_affected_by_the_policy_or_measure, :reference_for_ex-post_assessment, :web_link_for_ex-post_assessment, :projected_costs_eur_per_tonne_co2eq_reduced/_sequestered, :projected_absolute_costs_per_year_eur, :year_projected_cost_has_been_calculated_for, :price_reference_year_projected_costs, :projected_benefits_eur_per_tonne_co2eq_reduced/_sequestered, :projected_absolute_benefit_per_year_eur, :projected_net_costs_eur_per_tonne_co2eq_reduced/_sequestered, :projected_net_cost_per_year_eur, :description_of_projected_cost_estimates, :reference_for_projected_costs_and_benefits, :web_link_for_projected_costs_and_benefits, :realised_costs__eur_per_tonne_co2eq_reduced/_sequestered, :realised_absolute_costs_per_year_eur, :year_realised_cost_has_been_calculated_for, :price_reference_year_realised_costs, :realised_benefits_eur_per_tonne_co2eq_reduced/_sequestered, :realised_absolute_benefit_per_year_eur, :realised_net_costs_eur_per_tonne_co2eq_reduced/_sequestered, :realised_net_cost_per_year_eur, :description_of_realised_cost_estimates, :reference_for_realised_costs_and_benefits, :web_link_for_realised_costs_and_benefits, :projected_net_cost_per_year_eur, :realised_net_cost_per_year_eur)
    end
end
