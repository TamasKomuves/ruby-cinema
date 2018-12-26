class Auditorium < ApplicationRecord
  has_many :screenings
  validates :name, presence: true
  validates :capacity, presence: true
end
