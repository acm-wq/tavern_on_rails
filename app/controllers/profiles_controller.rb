class ProfilesController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render json: { message: 'Profile updated successfully.' }, status: :ok
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    reset_session
    render json: { message: 'Account deleted successfully.' }, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
