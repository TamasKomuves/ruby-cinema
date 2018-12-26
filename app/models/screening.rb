class Screening < ApplicationRecord
  belongs_to :movie
  belongs_to :auditorium
  has_many :tickets, dependent: :destroy
  has_many :users, through: :tickets
  validates :movie, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :auditorium, presence: true
end
