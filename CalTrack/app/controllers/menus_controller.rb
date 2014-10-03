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
    
    # params[:menu][:vegetable_ids].pop
    # params[:menu][:vegetable_ids].select

    @vegetable = Vegetable.find(params[:menu][:vegetable_ids]) if (params[:menu][:vegetable_ids])

    @condiment = Condiment.find(params[:menu][:condiment_ids]) if (params[:menu][:condiment_ids])
    @flatizza = Flatizza.find(params[:menu][:flatizza_ids]) if (params[:menu][:flatizza_ids])
    @salad = Salad.find(params[:menu][:salad_ids]) if (params[:menu][:salad_ids])
    @salad_dressing = SaladDressing.find(params[:menu][:salad_dressing_ids]) if (params[:menu][:salad_dressing_ids])
    @soup = Soup.find(params[:menu][:soup_ids]) if (params[:menu][:soup_ids])
    @breakfast = Breakfast.find(params[:menu][:breakfast_ids]) if (params[:menu][:breakfast_ids])
    @dessert = Dessert.find(params[:menu][:dessert_ids]) if (params[:menu][:dessert_ids])
    @beverage = Beverage.find(params[:menu][:beverage_ids]) if (params[:menu][:beverage_ids])

#The Calculation of all values
 

# if a != nil && b != nil
# a + b

# if s.each, if s != nil
# a

      # @vegetable
      #   sumsize= 0
      #   @vegetable.each { |v| sumsize+=v.serving_size }

 @totalsize = @bread.serving_size + @sandwich.serving_size + @vegetable.serving_size + @condiment.serving_size + @flatizza.serving_size + @salad.serving_size + @salad_dressing.serving_size + @soup.serving_size + @breakfast.serving_size + @dessert.serving_size + @beverage.serving_size

      # @vegetable
      #   sumcal = 0
      #   @vegetable.each { |v| sumcal+=v.calories }

@totalcalories = @bread.calories + @sandwich.calories + @vegetable.calories + @condiment.calories + @flatizza.calories + @salad.calories + @salad_dressing.calories + @soup.calories + @breakfast.calories + @dessert.calories + @beverage.calories

      # @vegetable
      #   sumcalfat = 0
      #   @vegetable.each { |v| sumcalfat+=v.calories_from_fat}

@totalcalfat = @bread.calories_from_fat + @sandwich.calories_from_fat + @vegetable.calories_from_fat + @condiment.calories_from_fat + @flatizza.calories_from_fat + @salad.calories_from_fat + @salad_dressing.calories_from_fat + @soup.calories_from_fat + @breakfast.calories_from_fat + @dessert.calories_from_fat + @beverage.calories_from_fat

      # @vegetable
      #   sumtotalfat = 0
      #   @vegetable.each { |v| sumtotalfat+=v.total_fat }

@totalfat = @bread.total_fat + @sandwich.total_fat + @vegetable.total_fat + @condiment.total_fat + @flatizza.total_fat + @salad.total_fat + @salad_dressing.total_fat + @soup.total_fat + @breakfast.total_fat + @dessert.total_fat + @beverage.total_fat

      # @vegetable
      #   sumsatfat = 0
      #   @vegetable.each { |v| sumsatfat+=v.saturated_fat }

@totalsatfat = @bread.saturated_fat + @sandwich.saturated_fat + @vegetable.saturated_fat + @condiment.saturated_fat + @flatizza.saturated_fat + @salad.saturated_fat + @salad_dressing.saturated_fat + @soup.saturated_fat + @breakfast.saturated_fat + @dessert.saturated_fat + @beverage.saturated_fat

      # @vegetable
      #   sumtransfat = 0
      #   @vegetable.each { |v| sumtransfat+=v.trans_fat }

@totaltransfat = @bread.trans_fat + @sandwich.trans_fat + @vegetable.trans_fat + @condiment.trans_fat + @flatizza.trans_fat + @salad.trans_fat + @salad_dressing.trans_fat + @soup.trans_fat + @breakfast.trans_fat + @dessert.trans_fat + @beverage.trans_fat

      # @vegetable
      #   sumcholesterol = 0
      #   @vegetable.each { |v| sumcholesterol+=v.cholesterol }

@totalcholesterol = @bread.cholesterol + @sandwich.cholesterol + @vegetable.cholesterol + @condiment.cholesterol + @flatizza.cholesterol + @salad.cholesterol + @salad_dressing.cholesterol + @soup.cholesterol + @breakfast.cholesterol + @dessert.cholesterol + @beverage.cholesterol

      # @vegetable
      #   sumsodium = 0
      #   @vegetable.each { |v| sumsodium+=v.sodium }

@totalsodium = @bread.sodium + @sandwich.sodium + @sandwich.sodium + @condiment.sodium + @flatizza.sodium + @salad.sodium + @salad_dressing.sodium + @soup.sodium + @breakfast.sodium + @dessert.sodium + @beverage.sodium

      # @vegetable
      #   sumcarbohydrates = 0
      #   @vegetable.each { |v| sumcarbohydrates+=v.carbohydrates }

@totalcarbohydrates = @bread.carbohydrates + @sandwich.carbohydrates + @vegetable.carbohydrates + @condiment.carbohydrates + @flatizza.carbohydrates + @salad.carbohydrates + @salad_dressing.carbohydrates + @soup.carbohydrates + @breakfast.carbohydrates + @dessert.carbohydrates + @beverage.carbohydrates

      # @vegetable
      #   sumfiber = 0
      #   @vegetable.each { |v| sumfiber+=v.dietary_fiber }

@totalfiber = @bread.dietary_fiber + @sandwich.dietary_fiber + @vegetable.dietary_fiber + @condiment.dietary_fiber + @flatizza.dietary_fiber + @salad.dietary_fiber + @salad_dressing.dietary_fiber + @soup.dietary_fiber + @breakfast.dietary_fiber + @dessert.dietary_fiber + @beverage.dietary_fiber

      # @vegetable
      #   sumsugars = 0
      #   @vegetable.each { |v| sumsugars+=v.sugars }

@totalsugars = @bread.sugars + @sandwich.sugars + @vegetable.sugars + @condiment.sugars + @flatizza.sugars + @salad.sugars + @salad_dressing.sugars + @soup.sugars + @breakfast.sugars + @dessert.sugars + @beverage.sugars

      # @vegetable
      #   sumprotein = 0
      #   @vegetable.each { |v| sumprotein+=v.protein }

@totalprotein = @bread.protein + @sandwich.protein + @vegetable.protein + @condiment.protein + @flatizza.protein + @salad.protein + @salad_dressing.protein + @soup.protein + @breakfast.protein + @dessert.protein + @beverage.protein

      # @vegetable
      #   sumvitamina = 0
      #   @vegetable.each { |v| sumvitamina+=v.vitamin_a }

@totalvitamina = @bread.vitamin_a + @sandwich.vitamin_a + @vegetable.vitamin_a + @condiment.vitamin_a + @flatizza.vitamin_a + @salad.vitamin_a + @salad_dressing.vitamin_a + @soup.vitamin_a + @breakfast.vitamin_a + @dessert.vitamin_a + @beverage.vitamin_a

      # @vegetable
      #   sumvitaminc = 0
      #   @vegetable.each { |v| sumvitaminc+=v.vitamin_c }

@totalvitaminc = @bread.vitamin_c + @sandwich.vitamin_c + @sandwich.vitamin_c + @condiment.vitamin_c + @flatizza.vitamin_c + @salad.vitamin_c + @salad_dressing.vitamin_c + @soup.vitamin_c + @breakfast.vitamin_c + @dessert.vitamin_c + @beverage.vitamin_c

      # @vegetable
      #   sumcalcium = 0
      #   @vegetable.each { |v| sumcalcium+=v.calcium }

@totalcalcium = @bread.calcium + @sandwich.calcium + @vegetable.calcium + @condiment.calcium + @flatizza.calcium + @salad.calcium + @salad_dressing.calcium + @soup.calcium + @breakfast.calcium + @dessert.calcium + @beverage.calcium

      # @vegetable
      #   sumiron = 0
      #   @vegetable.each { |v| sumiron+=v.iron }

@totaliron = @bread.iron + @sandwich.iron + @vegetable.iron + @condiment.iron + @flatizza.iron + @salad.iron + @salad_dressing.iron + @soup.iron + @breakfast.iron + @dessert.iron + @beverage.iron

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