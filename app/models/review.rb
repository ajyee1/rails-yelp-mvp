class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: {message: 'Cannot be blank'}
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: {in: 0..5, message: 'Must be a number between 0 and 5'}
end
