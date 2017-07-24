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

  def upvote
    @product = Product.find_by(upvote_params)
    @product.upvote += 1
    if @product.save
       @products = Product.all
       @products = @products.reverse
       @products
    else
      render json: {status: 500, err: 'Unable to upvote product'}
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :ings, :upvote)
  end

  def upvote_params
    params.require(:product).permit(:id)
  end
end
