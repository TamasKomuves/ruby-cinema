class MovieCategory < ApplicationRecord
  belongs_to :movie
  belongs_to :category
  validates :movie, presence: true
  validates :category, presence: true
end
