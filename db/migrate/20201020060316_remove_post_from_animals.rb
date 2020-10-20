class RemovePostFromAnimals < ActiveRecord::Migration[6.0]
  def change
    remove_reference :animals, :post, null: false, foreign_key: true
  end
end
