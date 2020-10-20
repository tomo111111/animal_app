class Post < ApplicationRecord

  has_many :animals_posts
  has_many :animals, through: :animals_posts

end
