class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.integer :state
      t.integer :boardgame_id

      t.timestamps null: false
    end
    add_index :instances, :state
    add_index :instances, :boardgame_id
  end
end
