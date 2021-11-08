class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.boolean :is_visible
      t.integer :position
      t.float :price

      t.timestamps
    end
  end
end
