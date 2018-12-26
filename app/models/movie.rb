class Movie < ApplicationRecord
  has_many :movie_categories
  has_many :categories, through: :movie_categories
  has_many :screenings, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :length, presence: true
end
