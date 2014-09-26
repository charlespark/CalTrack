class MenusController < ApplicationController
  def index
    @menu = Menu.new
    @breads = Bread.all
    @sandwiches = Sandwich.all
    @vegetables = Vegetable.all
    @condiments = Condiment.all
    @flatizzas = Flatizza.all
    @salads = Salad.all
    @salad_dressings = SaladDressing.all
    @soups = Soup.all
    @breakfasts = Breakfast.all
    @desserts = Dessert.all
    @beverages = Beverage.all
  end
# ^^^^^Adding in all the components that are part of the creation of a meal in this program
  
  def new
    @menu = Menu.new
  end
# ^^^^^The new Menu page

  def create
    # @menu = Menu.new(params.require(:menu).permit(:breads => []))
    # @menu = Menu.new(params.require(:menu).permit(:sandwiches => []))
    # @menu = Menu.new(params.require(:menu).permit(:vegetables => []))
    # @menu = Menu.new(params.require(:menu).permit(:condiments => []))
    # @menu = Menu.new(params.require(:menu).permit(:flatizzas => []))
    # @menu = Menu.new(params.require(:menu).permit(:salads => []))
    # @menu = Menu.new(params.require(:menu).permit(:salad_dressings => []))
    # @menu = Menu.new(params.require(:menu).permit(:soups => []))
    # @menu = Menu.new(params.require(:menu).permit(:breakfasts => []))
    # @menu = Menu.new(params.require(:menu).permit(:desserts => []))
    # @menu = Menu.new(params.require(:menu).permit(:beverages => []))
   if @menu.save
      redirect_to @menu
    else
      render 'new'
    end
  end
# ^^^^^The main create duties are handled by "Calculate", below.

  def show
    @menu = Menu.find(params[:id])
  end
# ^^^^^Some basic controls for future paths 

  def edit
    @menu = Menu.find(params[:id])
  end
# ^^^^^Some basic controls for future paths

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params.require(:menu).permit(:title, :breads => []))
      redirect_to @menu
    else
      render 'edit'
    end
  end
# ^^^^^Some basic controls for future paths

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menu_path
  end
# ^^^^^Some basic controls for future paths

  def calculate
    # Menu.find(params.require(:menu).permit(:title, :breads => []))
    # @menu = Menu.new(params[:id])
    # @menu.update_attributes(params.require(:menu).permit(:bread_ids => []))

      # raise params
    @bread = Bread.find(params[:menu][:bread_ids]) if (params[:menu][:bread_ids])

    @sandwich = Sandwich.find(params[:menu][:sandwich_ids]) if (params[:menu][:sandwich_ids])

    # @menu = Menu.new(params.require(:menu).permit(:condiment_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:flatizza_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:salad_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:saladDressing_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:soup_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:breakfast_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:dessert_ids => []))
    # @menu = Menu.new(params.require(:menu).permit(:beverage_ids => []))
    # @menu.save
        #else
    #render 'new'
    end
  end
  # ^^^^^ Where the calculation (is supposed to) happen.  Though the individual food items ids are passed to the Calculate page, they do not individually display, which is a source of great frustration.
  # ^^^^^ For some reason, the '@menu.save' command in line 86 does not play nice when a food category that is noted by checkboxes (vegetables, condiments, salad dressing, soup, dessert and beverage are active in the above, as it breaks the page, leaving the error message NameError in MenusController#calculate - uninitialized constant Name