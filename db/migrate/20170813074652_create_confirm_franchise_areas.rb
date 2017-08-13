class CreateConfirmFranchiseAreas < ActiveRecord::Migration
  def change
    create_table :confirm_franchise_areas do |t|
      t.references :confirm_franchise, index: true, foreign_key: true
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
