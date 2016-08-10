class RemoveColumnsFromBottoms < ActiveRecord::Migration[5.0]
  def change
    remove_column :bottoms, :type, :string
    remove_column :bottoms, :subtype, :string
  end
end
