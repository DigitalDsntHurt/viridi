class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :name
      t.string :data_source
      t.string :world_region
      t.string :country
      t.string :country_region
      t.string :city
      t.string :link
      t.string :jurisdiction
      t.string :agency
      t.integer :policy_written_year
      t.integer :policy_implementation_period_start_year
      t.integer :policy_implementation_period_end_year
      t.string :policy_status
      t.string :policy_type
      t.string :policy_target
      t.string :description
      t.string :ghgs_affected
      t.boolean :related_to_eu_policy_boolean
      t.string :related_to_eu_policy
      t.string :impact_on_eu_ets_esd_or_lulucf_emissions
      t.float :total_ghg_emissions_reductions_in_2020
      t.float :total_ghg_emissions_reductions_in_2030
      t.boolean :related_to_neeap_policy_boolean
      t.string :related_to_neeap_policy
      t.string :impact_evaluation
      t.string :policy_financing_quantity
      t.integer :policy_financing_period_start
      t.integer :policy_financing_period_end
      t.float :percent_private_funded
      t.string :related_documents

      t.timestamps
    end
  end
end
