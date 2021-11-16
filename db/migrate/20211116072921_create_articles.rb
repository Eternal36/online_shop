class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
