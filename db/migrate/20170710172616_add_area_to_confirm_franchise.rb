class AddAreaToConfirmFranchise < ActiveRecord::Migration
  def change
    add_reference :confirm_franchises, :area, index: true, foreign_key: true
  end
end
