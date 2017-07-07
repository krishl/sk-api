class Api::V1::ProductsController < ApplicationController
  def index
    render json: Product.includes(:ingredients), include: ['ingredients']
  end
end
