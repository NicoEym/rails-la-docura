class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  def new
    @ingredient = ingredient.new
    authorize @ingredient
  end

  def create
    @ingredient = ingredient.new(ingredient_params)
    authorize @ingredient
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def show
  end

  def index
    @ingredient = policy_scope(Ingredient)
  end

  def edit
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to ingredient_path(@ingredient)
    else
      render :edit
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredientes_path
  end

  private

  def set_ingredient
    @ingredient = ingredient.find(params[:id])
    authorize @ingredient
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :price, :ingredient_category_id)
  end
end