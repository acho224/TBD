class AddColumnsToBottom < ActiveRecord::Migration[5.0]
  def change
    add_column :bottoms, :url, :string
  end
end
