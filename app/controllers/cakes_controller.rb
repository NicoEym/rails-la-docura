class CakesController < ApplicationController
  before_action :set_cake, only: [:show, :edit, :update, :destroy]

  def new
    @cake = cake.new
    authorize @cake
  end

  def create
    @cake = cake.new(cake_params)
    authorize @cake
    if @cake.save
      redirect_to cake_path(@cake)
    else
      render :new
    end
  end

  def show
  end

  def index
    @cake = policy_scope(Cake)
  end

  def edit
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
    redirect_to cakees_path
  end

  private

  def set_cake
    @cake = cake.find(params[:id])
    authorize @cake
  end

  def cake_params
    params.require(:cake).permit(:name, :price, :image_url)
  end
end
