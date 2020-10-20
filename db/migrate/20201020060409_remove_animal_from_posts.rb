class RemoveAnimalFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :posts, :animal, null: false, foreign_key: true
  end
end
