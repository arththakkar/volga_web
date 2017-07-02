class AddRoleTypeToUser < ActiveRecord::Migration
  def change
    add_reference :users, :role_type, index: true, foreign_key: true
  end
end
