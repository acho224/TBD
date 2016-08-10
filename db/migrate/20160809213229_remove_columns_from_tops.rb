class RemoveColumnsFromTops < ActiveRecord::Migration[5.0]
  def change
    remove_column :tops, :type, :string
    remove_column :tops, :subtype, :string
  end
end
