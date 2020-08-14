class CartsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @cart = current_cart
  end

  def destroy
  end

  def add_to_cart
    current_cart.add_item(params[:cake])
    # redirect to shopping cart or whereever
    redirect_to carts_path(current_cart.id)
  end
end
