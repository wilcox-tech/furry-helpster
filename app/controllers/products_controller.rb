class ProductsController < ApplicationController
  def index
    @products = Product.all_public
  end

  def show
    @product = Product.find(params[:id])
  end
end
