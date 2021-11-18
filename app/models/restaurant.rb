class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: {message: 'Cannot be blank'}, length: { minimum: 2, message: 'Must be more than one character'}
  validates :address, presence: {message: 'Cannot be blank'}
  validates :phone_number, presence: {message: 'Cannot be blank'}
  validates :category, presence: {message: 'Cannot be blank'}, inclusion: { in: %w[chinese italian japanese french belgian], message: 'Must be either Chinese, Italian, Japanese, French or Belgian cuisine' }
end
