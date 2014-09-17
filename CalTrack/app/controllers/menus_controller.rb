class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params.require(:menu).permit(:title, :actor_ids => []))
    if @menu.save
      redirect_to @menu
    else
      render 'new'
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params.require(:menu).permit(:title, :actor_ids => []))
      redirect_to @menu
    else
      render 'edit'
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to root_path
  end
end
