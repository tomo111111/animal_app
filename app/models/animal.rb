class Animal < ApplicationRecord

  has_many :animas_posts
  has_many :posts, through: :animas_posts

end
