class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_sign_in?
    current_user.present?
  end

  def authenticate_user!
    unless user_sign_in?
      redirect_to register_path, alert: "Please log in to access this page."
    end
  end

  helper_method :current_user, :user_sign_in?
end
