class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :hottemp, :integer
    add_column :users, :coldtemp, :integer
    add_column :users, :gender, :string
  end
end
