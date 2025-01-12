class Assignment < ApplicationRecord
  belongs_to :user, foreign_key: "users_id"
  belongs_to :user_role, foreign_key: "user_roles_id"
end
