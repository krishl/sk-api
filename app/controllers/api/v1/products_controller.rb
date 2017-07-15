class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    @products
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render @product
    else
      render json: {status: 500, err: 'Unable to save product'}
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :ings)
  end
end
