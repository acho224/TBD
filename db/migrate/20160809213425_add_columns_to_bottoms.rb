class AddColumnsToBottoms < ActiveRecord::Migration[5.0]
  def change
    add_column :bottoms, :length, :string
    add_column :bottoms, :weather, :string
  end
end
