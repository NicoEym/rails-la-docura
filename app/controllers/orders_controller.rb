class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def new
    @order = order.new
    authorize @order
  end

  def create
    @order = order.new(order_params)
    authorize @order
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show
  end

  def index
    @order = policy_scope(Order)
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orderes_path
  end

  private

  def set_order
    @order = order.find(params[:id])
    authorize @order
  end

  def order_params
    params.require(:order).permit(:name, :price, :order_category_id)
  end
end
