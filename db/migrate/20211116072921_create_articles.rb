class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :product
      t.integer :number

      t.timestamps
    end
  end
end
