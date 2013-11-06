class MenusController < ApplicationController

  def index
    @menu = Menu.new
    @menus = Menu.all
  end

  def new
  end

  def create
    @question = Menu.create(params[:menu])
    redirect_to root_path
  end

end