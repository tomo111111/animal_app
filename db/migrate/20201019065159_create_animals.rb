class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :subcategory, null: false
      t.string :sex, null: false
      t.string :prefecture, null: false
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
