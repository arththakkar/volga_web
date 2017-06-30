class CreateConfirmFranchises < ActiveRecord::Migration
  def change
    create_table :confirm_franchises do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.date :birthdate
      t.text :pan_no
      t.string :email_id
      t.text :adhaar_no
      t.string :nominee_name
      t.string :relation_with_nominee
      t.float :amount
      t.text :cheque_no
      t.date :cheque_date
      t.string :bank_name
      t.boolean :is_pan_card
      t.boolean :is_adhaar_card
      t.boolean :is_light_bill
      t.text :franchise_code

      t.timestamps null: false
    end
  end
end
