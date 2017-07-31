class Category < ApplicationRecord
  validates :name, {presence: true}
  has_many :movies_categories
  has_many :movies, through: :movies_categories
end
