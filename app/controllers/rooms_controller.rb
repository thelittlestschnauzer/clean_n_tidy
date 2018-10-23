class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all.order('created_at DESC')
  end

  def new
    @room = Room.new
    2.times { @room.chores.build }
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def show
    @chores = @room.chores
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:title, :image, :image_cache, :remote_image_url, chores_attributes: [:id, :name, :date_assigned, :assigned_to, :completed, :_destroy])
  end

  def set_room
    @room = Room.find(params[:id])
  end

end
