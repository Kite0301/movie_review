class MoviesCategory < ApplicationRecord
  validates :movie_id, {presence: true}
  validates :category_id, {presence: true}
  belongs_to :movie
  belongs_to :category
end
