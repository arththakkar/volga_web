class CreateDriverBankDetails < ActiveRecord::Migration
  def change
    create_table :driver_bank_details do |t|
      t.references :confirm_driver, index: true, foreign_key: true
      t.string :bank_name
      t.string :branch_name
      t.string :account_number
      t.string :ifsc_code

      t.timestamps null: false
    end
  end
end
