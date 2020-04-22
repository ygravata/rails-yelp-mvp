class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: {
    in: [0, 1, 2, 3, 4, 5],
    message: 'Is not a valid category'
  }, numericality: { only_integer: true }
end
