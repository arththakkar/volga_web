class AddEmiDateDdToDriver < ActiveRecord::Migration
  def change
    add_column :drivers, :emi_date_dd, :integer
  end
end
