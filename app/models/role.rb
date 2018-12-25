class Role < ApplicationRecord
  belongs_to :user
  validates :user, presence: true

  def self.is_admin?(user)
    role = Role.find_by(user: user)
    role.role == 'ADMIN'
  end
end
