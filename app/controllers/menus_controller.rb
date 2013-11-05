class MenusController < ApplicationController

  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def new
  end

  def create
    @question = Menu.create(params[:menu])
    redirect_to root_path
  end

end