class AddUserToConfirmFranchise < ActiveRecord::Migration
  def change
    add_reference :confirm_franchises, :user, index: true, foreign_key: true
  end
end
