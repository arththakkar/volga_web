class CreateFranchiseLeaderAreas < ActiveRecord::Migration
  def change
    create_table :franchise_leader_areas do |t|
      t.references :franchise_leader, index: true, foreign_key: true
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
