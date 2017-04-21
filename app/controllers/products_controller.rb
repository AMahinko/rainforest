class ProductsController < ApplicationController

  def index
    @products =  Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new

    @picture = Product.new

  end

  def edit

    @picture = Product.find(params[:id])

  end

  def create
    @product = Product.new(product_params)
    if Product.save
      redirect_to_products_url
      return
    else
      render :new
      return
    end
  end

  def update
    @product =  Product.find(product_params)
    if @product.update_attributes(product_params)
      redirect_to_products_url
      return
    else
      render :edit
      return
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to_products_url
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
