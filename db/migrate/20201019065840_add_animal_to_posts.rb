class AddAnimalToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :animal, null: false, foreign_key: true
  end
end
