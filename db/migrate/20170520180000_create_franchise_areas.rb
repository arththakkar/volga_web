class CreateFranchiseAreas < ActiveRecord::Migration
  def change
    create_table :franchise_areas do |t|
      t.references :franchise, index: true, foreign_key: true
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
