class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.integer :position, null: true
      t.integer :color, null: true
      t.belongs_to :user, null: false, index: true
      t.belongs_to :instance, null: false, instance: true

      t.timestamps null: false
    end
  end
end
