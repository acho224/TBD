class AddColumnsToTop < ActiveRecord::Migration[5.0]
  def change
    add_column :tops, :url, :string
  end
end
