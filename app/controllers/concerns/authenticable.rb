module Authenticable
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_admin!
  end

  def authenticate_admin!
    unless current_user && current_user.user_roles.exists?(name: "admin")
      redirect_to root_path, alert: "You do not have access to this page."
    end
  end
end
