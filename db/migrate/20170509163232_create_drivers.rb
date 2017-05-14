class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :mobile_number
      t.string :car_plate_number
      t.string :emi
      t.string :emi_date
      t.string :in_cab_business_from
      t.integer :plan
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
