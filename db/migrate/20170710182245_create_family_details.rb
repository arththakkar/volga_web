class CreateFamilyDetails < ActiveRecord::Migration
  def change
    create_table :family_details do |t|
      t.string :name
      t.date :birth_date
      t.string :relation
      t.references :confirm_driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
