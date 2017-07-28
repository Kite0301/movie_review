class Movie < ApplicationRecord
  has_many :reviews
  has_many :movies_categories
  has_many :categories, through: :movies_categories

  def average_point
    reviews = self.reviews
    return if reviews.blank?
    total_point = 0
    reviews.each do |review|
      total_point += review.point
    end
    return (total_point.to_f / reviews.count).round(1)
  end
end
