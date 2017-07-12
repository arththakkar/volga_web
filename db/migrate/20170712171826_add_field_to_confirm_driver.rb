class AddFieldToConfirmDriver < ActiveRecord::Migration
  def change
    add_column :confirm_drivers, :birth_date, :date
  end
end
