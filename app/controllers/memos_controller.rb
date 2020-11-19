class MemosController < ApplicationController

  def index
    @memos = Memo.all.order("created_at DESC")
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:image, :title, :text, :amount, :category_id, :store_id, :genre_id, :when_id).merge(user_id: current_user.id)
  end
end
