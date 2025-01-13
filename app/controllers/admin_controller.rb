
class AdminController < ApplicationController
  before_action :authenticate_admin!

  def dashboard
  end

  private

  def authenticate_admin!
    unless current_user && current_user.user_roles.exists?(name: "admin")
      redirect_to root_path
    end
  end
end

