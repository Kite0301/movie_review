class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  has_many :reviews
  has_secure_password

  def review_for(movie)
    Review.find_by(user_id: self.id, movie_id: movie.id)
  end
end
