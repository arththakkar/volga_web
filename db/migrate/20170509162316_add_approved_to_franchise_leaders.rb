class AddApprovedToFranchiseLeaders < ActiveRecord::Migration
  def change
    add_column :franchise_leaders, :is_approved, :boolean
  end
end
