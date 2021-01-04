class Post < ApplicationRecord

  has_one_attached :image
  has_many :animals_posts
  has_many :animals, through: :animals_posts

end
