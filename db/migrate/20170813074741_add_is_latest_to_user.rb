class AddIsLatestToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_latest, :boolean, default: false
  end
end
