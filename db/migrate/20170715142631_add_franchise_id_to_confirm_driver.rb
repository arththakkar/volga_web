class AddFranchiseIdToConfirmDriver < ActiveRecord::Migration
  def change
    add_reference :confirm_drivers, :confirm_franchise, index: true, foreign_key: true
  end
end
