class CreateTops < ActiveRecord::Migration[5.0]
  def change
    create_table :tops do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.string :subtype

      t.timestamps
    end
  end
end
