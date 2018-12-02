class Screening < ApplicationRecord
  belongs_to :movie
  belongs_to :auditorium
  has_many :tickets
  has_many :users, through: :tickets
end
