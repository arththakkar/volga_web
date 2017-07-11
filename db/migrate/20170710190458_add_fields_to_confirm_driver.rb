class AddFieldsToConfirmDriver < ActiveRecord::Migration
  def change
    add_column :confirm_drivers, :car_plate_number, :string
    add_column :confirm_drivers, :city, :string
  end
end
