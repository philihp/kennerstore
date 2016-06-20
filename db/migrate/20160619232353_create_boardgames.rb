class CreateBoardgames < ActiveRecord::Migration
  def change
    create_table :boardgames do |t|
      t.string :title, default: "Unnamed Game", null: false

      t.timestamps null: false
    end
  end
end
