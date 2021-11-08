class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :is_visible
      t.integer :position

      t.timestamps
    end
  end
end
