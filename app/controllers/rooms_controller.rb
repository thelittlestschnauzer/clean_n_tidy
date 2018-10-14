class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]

  def index
    @rooms = Room.order('created_at DESC')
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update_attributes(room_params)
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
  end

  private

  def room_params
    params.require(:room).permit(:title, :image, :image_cache, :remote_image_url) 
  end

  def set_room
    @room = Room.find(params[:id])
  end

end
