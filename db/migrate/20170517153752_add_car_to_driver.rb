class AddCarToDriver < ActiveRecord::Migration
  def change
    add_reference :drivers, :car, index: true, foreign_key: true
  end
end
