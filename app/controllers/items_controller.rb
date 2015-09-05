class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Item.ransack(params[:q])
    @items = @q.result
  end

  def new

  end

  def create

  end

  def show

  end

  def update
    flash[:notice] = "Item checked" if current_item.update_attributes(item_params)
    redirect_to items_path
  end

  def destroy

  end

  private
  
  def current_item
    item ||= Item.find(params[:id])
  end
  def item_params
    params.require(:item).permit(:checked_out, :checked_out_last, :processed_by_id, :checked_out_to)
  end
end
