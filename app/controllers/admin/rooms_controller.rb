class Admin::RoomsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to admin_rooms_path, notice: "Room successfully created."
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :description, :capacity, :price, :unix_time)
  end

  def authenticate_admin!
    unless current_user && current_user.user_roles.exists?(name: "admin")
      redirect_to root_path, alert: "You do not have access to this page."
    end
  end
end
