class Admin::RoomsController < ApplicationController
  include Authenticable

  def index
    @rooms = Room.all
    @room = Room.new
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
    params.require(:room).permit(:name, :description, :capacity, :price, :photo)
  end
end
