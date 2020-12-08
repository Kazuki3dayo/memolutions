class RoomsController < ApplicationController

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end
  
  private

  def room_params
    params.require(:room).permit(:name, :password_digest, user_ids: []) #このパーミットの意味後で調べる
  end

end
