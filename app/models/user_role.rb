class UserRole < ApplicationRecord
  has_many :assignments, foreign_key: "user_roles_id", dependent: :nullify
  has_many :users, through: :assignments

  validates :name, presence: true, uniqueness: true
end
