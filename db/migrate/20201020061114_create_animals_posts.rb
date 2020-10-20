class CreateAnimalsPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :animals_posts do |t|
      t.references :animal, foreign_key: true
      t.references :post, foreign_key: true
      t.timestamps
    end
  end
end
