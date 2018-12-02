class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :screening
  validates :user, presence: true
  validates :screening, presence: true
  validates :quantity, presence: true
end
