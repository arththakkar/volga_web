class UpdateColumnToDriver < ActiveRecord::Migration
  def change
  	change_column :drivers, :plan, :string
  end
end
