class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(params[:item])
    @item.menu_id = params[:menu_id].to_i
    @item.save
    redirect_to root_path
  end

  def show
  end
end