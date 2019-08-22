class CreateTestRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :test_records do |t|
      t.string :country
      t.string :link
      t.string :email
      t.string :phone
      t.string :name_of_policy
      t.string :single_policy_or_group_of_policies
      t.string :type_of_policy_instrument
      t.float :total_ght_emissions_reductions_in_2020_kt_co2eq_per_year
      t.float :realized_net_costs

      t.timestamps
    end
  end
end
