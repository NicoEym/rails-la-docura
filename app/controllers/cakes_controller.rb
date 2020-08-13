class CakesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :index, :show]
  before_action :set_cake, only: [:show, :edit, :update, :destroy]

  def new
    @cake = Cake.new
    authorize @cake
    @number_of_choices_for_dough = IngredientCategory.find_by(name: "Massa").how_many_items
    @number_of_choices_for_filling = IngredientCategory.find_by(name: "Recheio").how_many_items
    @number_of_choices_for_icing = IngredientCategory.find_by(name: "Cobertura").how_many_items
    @number_of_choices_for_decoration = IngredientCategory.find_by(name: "Decoração").how_many_items
    @number_of_choices_for_format = IngredientCategory.find_by(name: "Formato do bolo").how_many_items
    @number_of_cake_ingredient_to_create = @number_of_choices_for_dough + @number_of_choices_for_filling + @number_of_choices_for_icing + @number_of_choices_for_decoration + @number_of_choices_for_format
    @number_of_cake_ingredient_to_create.times { @cake.cake_ingredients.build }
  end

  def create
    @cake = Cake.new(cake_params)
    authorize @cake
    @cake.user_id = current_user.id
    if @cake.save
      if user_signed_in? && current_user.admin?
        redirect_to cakes_path
      else
        redirect_to cake_path(@cake)
      end
    else
      render :new
    end
  end

  def show
  end

  def index
    @cakes = policy_scope(Cake)
    @cake = Cake.new
  end

  def edit
    @number_of_choices_for_dough = IngredientCategory.find_by(name: "Massa").how_many_items
    @number_of_choices_for_filling = IngredientCategory.find_by(name: "Recheio").how_many_items
    @number_of_choices_for_icing = IngredientCategory.find_by(name: "Cobertura").how_many_items
    @number_of_choices_for_decoration = IngredientCategory.find_by(name: "Decoração").how_many_items
    @number_of_choices_for_format = IngredientCategory.find_by(name: "Formato do bolo").how_many_items
    @cake_ingredients = CakeIngredient.where(cake: @cake)
  end

  def update
    if @cake.update(cake_params)
      redirect_to cake_path(@cake)
    else
      render :edit
    end
  end

  def destroy
    @cake.destroy
    redirect_to cakes_path
  end

  private

  def set_cake
    @cake = Cake.find(params[:id])
    authorize @cake
  end

  def cake_params
    params.require(:cake).permit(:name, :price, :on_the_menu, :image_url, cake_ingredients_attributes: [:id, :ingredient_id, :_destroy])
  end
end
