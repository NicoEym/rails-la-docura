class StandardCakesController < ApplicationController
  before_action :set_standard_cake, only: [:show, :edit, :update, :destroy]

  def new
    @standard_cake = StandardCake.new
    authorize @standard_cake
  end

  def create
    @standard_cake = StandardCake.new(standard_cake_params)
    authorize @standard_cake
    if @standard_cake.save
      redirect_to standard_cake_path(@standard_cake)
    else
      render :new
    end
  end

  def show
  end

  def index
    @standard_cake = policy_scope(StandardCake)
  end

  def edit
  end

  def update
    if @standard_cake.update(standard_cake_params)
      redirect_to standard_cake_path(@standard_cake)
    else
      render :edit
    end
  end

  def destroy
    @standard_cake.destroy
    redirect_to standard_cakees_path
  end

  private

  def set_standard_cake
    @standard_cake = StandardCake.find(params[:id])
    authorize @standard_cake
  end

  def standard_cake_params
    params.require(:standard_cake).permit(:name, :price, :image_url)
  end
end
