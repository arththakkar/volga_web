class ChangeInsuranceNumberInConfirmDriver < ActiveRecord::Migration
  def change
  	change_column :confirm_drivers , :insurance_policy_number , :string
  end
end
