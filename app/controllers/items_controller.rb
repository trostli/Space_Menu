class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(params[:item])
    redirect_to root_path
  end

  def show
  end
end