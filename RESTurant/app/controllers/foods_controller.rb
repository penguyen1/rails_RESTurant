class FoodsController < ApplicationController
  before_action :authenticate

  def index
    @foods = Food.all
  end
  
  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end
  
  def edit
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.create(food_params)

    if @food.save
      redirect_to food_path(@food)            # "food#show" profile view    redirect_to @food ??
    else 
      render 'new'      # otherwise, go back to new form
    end
  end
  
  def update
    @food = Food.find(params[:id])

    if @food.update(food_params)
      redirect_to food_path(@food)            # "food#show" profile view    redirect_to @food ??
    else
      render 'edit'     # otherwise, go back to edit form
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path                  # "foods#index" list of all foods view
  end

  private   # strong params
  def food_params
    params.require(:food).permit(:name, :cuisine, :price, :allergins, :description)
  end

end