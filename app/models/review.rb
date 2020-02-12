class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, presence: true, numericality: true
  validates :content, presence: true
end
