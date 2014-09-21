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
    @menu = Menu.new(params.require(:menu).permit(:sandwiches => []))
    @menu = Menu.new(params.require(:menu).permit(:vegetables => []))
    @menu = Menu.new(params.require(:menu).permit(:condiments => []))
    @menu = Menu.new(params.require(:menu).permit(:flatizzas => []))
    @menu = Menu.new(params.require(:menu).permit(:salads => []))
    @menu = Menu.new(params.require(:menu).permit(:salad_dressings => []))
    @menu = Menu.new(params.require(:menu).permit(:soups => []))
    @menu = Menu.new(params.require(:menu).permit(:breakfasts => []))
    @menu = Menu.new(params.require(:menu).permit(:desserts => []))
    @menu = Menu.new(params.require(:menu).permit(:beverages => []))
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
    if @menu.update_attributes(params.require(:menu).permit(:title, :breads => []))
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
    # bread = params[:bread_ids]
    @bread = Bread.find(params[:name])
    # sandwich = params[:sandwich]
    # vegetable = params[:vegetable]
    # condiment = params[:condiment]
    # flatizza = params[:flatizza]   
    # salad = params[:salad]
    # salad_dressing = params[:salad_dressing]
    # soup = params[:soup]
    # breakfast = params[:breakfast]
    # dessert = params[:dessert]
    # beverage = params[:beverage]
    # @result = bread.to_i +  sandwich.to_i
    # render 'result'
    # @menu = Menu.find(params[:id])

    # Menu.find(params.require(:menu).permit(:title, :breads => []))
    # @menu = Menu.find(params.require(:menu).permit(:sandwiches => []))
    # @menu = Menu.find(params.require(:menu).permit(:vegetables => []))
    # @menu = Menu.find(params.require(:menu).permit(:condiments => []))
    # @menu = Menu.find(params.require(:menu).permit(:flatizzas => []))
    # @menu = Menu.find(params.require(:menu).permit(:salads => []))
    # @menu = Menu.find(params.require(:menu).permit(:salad_dressings => []))
    # @menu = Menu.find(params.require(:menu).permit(:soups => []))
    # @menu = Menu.find(params.require(:menu).permit(:breakfasts => []))
    # @menu = Menu.find(params.require(:menu).permit(:desserts => []))
    # @menu = Menu.find(params.require(:menu).permit(:beverages => []))
    # else
    # render 'new'
    end
  end