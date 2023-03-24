class SpreeProductsController < ApplicationController
    def new
      @product = SpreeProduct.new
    end
  
    def create
      @product = SpreeProduct.new(product_params)
  
      if @product.save
        redirect_to @product
      else
        render 'new'
      end
    end
  
    private
  
    def product_params
      params.require(:spree_product).permit(:producer, :name, :description, :price)
    end
  end