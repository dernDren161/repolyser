class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    #the following line of code was added to show thw user's association with a created product
    @product.user = current_user
    if @product.save
      flash[:success]="Your information was successfully added."
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success]="Your changes were updated"
      redirect_to product_path(@product)
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:success]="The information was successfully destroyed"
    redirect_to products_path(@product)
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:beginner, :intermediate, :advanced, :language)
  end
end
