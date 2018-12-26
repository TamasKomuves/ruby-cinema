class Role < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :role, presence: true

  def self.is_admin?(user)
    role = Role.find_by(user: user)
    if role == nil
      role = Role.new(user: user, role: 'USER')
      role.save!
    end
    role.role == 'ADMIN'
  end
end
