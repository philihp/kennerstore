class AddInstanceToMovements < ActiveRecord::Migration
  def change
    add_reference :movements, :instance, index: true, foreign_key: true
  end
end
