class User < ApplicationRecord
  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :assignments, foreign_key: "users_id", dependent: :nullify
  has_many :user_roles, through: :assignments

  include SetUnixTime
end
