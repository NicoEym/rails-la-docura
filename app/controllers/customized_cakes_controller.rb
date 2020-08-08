class CustomizedCakesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_customized_cake, only: [:show, :edit, :update, :destroy]

  def new
    @customized_cake = CustomizedCake.new
    authorize @customized_cake
    5.times { @customized_cake.cake_ingredients.build }
  end

  def create
    @customized_cake = CustomizedCake.new(customized_cake_params)
    authorize @customized_cake
    if @customized_cake.save
      redirect_to customized_cake_path(@customized_cake)
    else
      render :new
    end
  end

  def show
  end

  def index
    @customized_cake = policy_scope(CustomizedCake)
  end

  def edit
    @cake_ingredients = CakeIngredient.where(customized_cake: @customized_cake)
  end

  def update
    if @customized_cake.update(customized_cake_params)
      redirect_to customized_cake_path(@customized_cake)
    else
      render :edit
    end
  end

  def destroy
    @customized_cake.destroy
    redirect_to customized_cakes_path
  end

  private

  def set_customized_cake
    @customized_cake = CustomizedCake.find(params[:id])
    authorize @customized_cake
  end

  def customized_cake_params
    params.require(:customized_cake).permit(:name, :price, cake_ingredients_attributes: [:id, :ingredient_id, :_destroy])
  end
end
