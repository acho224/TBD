class AddColumnsToTops < ActiveRecord::Migration[5.0]
  def change
    add_column :tops, :length, :string
    add_column :tops, :weather, :string
  end
end
