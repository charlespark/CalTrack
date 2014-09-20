class MenusController < ApplicationController
  def index
    @menus = Menu.all
    @breads = Bread.all
    @sandwiches = Sandwich.all
    @vegetables = Vegetable.all
    @condiments = Condiment.all
    @flatizzas = Flatizza.all
    @salads = Salad.all
    @salad_dressings = Salad_Dressing.all
    @soups = Soup.all
    @breakfasts = Breakfast.all
    @desserts = Dessert.all
    @beverages = Beverage.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params.require(:menu).permit(:breads => []))
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

  def calculate
  #   render 'new'
  end



end

