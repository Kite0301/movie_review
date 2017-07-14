class Review < ApplicationRecord
  validates :user_id, {presence: true}
  validates :movie_id, {presence: true}
  validates :point, {presence: true, inclusion: 1..5}
  belongs_to :user
  belongs_to :movie
end
