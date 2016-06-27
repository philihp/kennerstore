class AddCommandToMovement < ActiveRecord::Migration
  def change
    add_column :movements, :command, :string
  end
end
