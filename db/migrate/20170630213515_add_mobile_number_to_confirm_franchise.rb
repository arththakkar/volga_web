class AddMobileNumberToConfirmFranchise < ActiveRecord::Migration
  def change
    add_column :confirm_franchises, :mobile_no, :string
  end
end
