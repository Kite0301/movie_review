class Review < ApplicationRecord
  validates :user_id, {presence: true}
  validates :post_id, {presence: true}
  validates :point, {presence: true}
end
