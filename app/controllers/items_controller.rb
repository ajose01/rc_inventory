class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
  end

  def new

  end

  def create

  end

  def show

  end

  def update
    current_item.update_attributes(item_params)
    render text: 'updated!'
  end

  def destroy

  end

  private
  
  def current_item
    item ||= Item.find(params[:id])
  end
  def item_params
    params.require(:item).permit(:checked_out, :checked_out_last, :processed_by_id)
  end
end
