class Review < ApplicationRecord
  validates :user_id, {presence: true}
  validates :movie_id, {presence: true}
  validates :point, {presence: true}
  belongs_to :user
  belongs_to :movie
end
