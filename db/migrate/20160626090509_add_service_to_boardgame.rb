class AddServiceToBoardgame < ActiveRecord::Migration
  def change
    add_column :boardgames, :service, :string
  end
end
