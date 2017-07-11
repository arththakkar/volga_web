class CreateConfirmDrivers < ActiveRecord::Migration
  def change
    create_table :confirm_drivers do |t|
      t.references :car, index: true, foreign_key: true
      t.string :car_model
      t.string :car_engine_number
      t.string :chassis_number
      t.string :varient
      t.string :color
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :adhaar_number
      t.string :driving_licence_number
      t.string :badge_number
      t.string :address1
      t.string :address2
      t.references :area, index: true, foreign_key: true
      t.string :mobile_number
      t.string :alternamte_number
      t.string :email
      t.string :pan_number
      t.string :photo_id_type
      t.string :photo_id_number
      t.string :address_proof_type
      t.string :address_proof_number
      t.string :shift
      t.string :is_schedule
      t.string :scheme

      t.timestamps null: false
    end
  end
end
