class AddInsuranceFieldsToConfirmDriver < ActiveRecord::Migration
  def change
    add_column :confirm_drivers, :insurance_policy_number, :integer
    add_column :confirm_drivers, :insurance_expiry_date, :datetime
  end
end
