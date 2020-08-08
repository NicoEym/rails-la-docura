class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  def new
    @ingredient = Ingredient.new
    authorize @ingredient
    @ingredient_categories = IngredientCategory.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    authorize @ingredient
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def show
  end

  def index
    @ingredients = policy_scope(Ingredient)
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient_categories = IngredientCategory.all
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
      render :edit
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
    authorize @ingredient
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :price, :ingredient_category_id)
  end
end
