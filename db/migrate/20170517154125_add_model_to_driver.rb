class AddModelToDriver < ActiveRecord::Migration
  def change
    add_column :drivers, :model, :string
  end
end
