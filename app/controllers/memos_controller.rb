class MemosController < ApplicationController
  before_action :set_memo, only: [:edit, :show]

  def index
    @memos = Memo.all.order("created_at DESC")
  end

  def new
    @memo = Memo.new
    @memo.amount = 0
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def memo_params
    params.require(:memo).permit(:image, :title, :text, :amount, :category_id, :store_id, :genre_id, :when_id).merge(user_id: current_user.id)
  end

  def set_memo
    @memo = Memo.find(params[:id])
  end
end
