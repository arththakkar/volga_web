class CreateFranchiseLeaders < ActiveRecord::Migration
  def change
    create_table :franchise_leaders do |t|
      t.string :name
      t.date :birth_date
      t.string :mobile_number
      t.integer :exp_in_cab_business
      t.string :monthly_expectations
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
