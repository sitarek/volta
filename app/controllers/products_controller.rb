class ProductsController < ApplicationController
  expose(:product, attributes: :product_attributes)
  expose(:products)

  def index
  end

  def new
  end

  def fav; end

  def show
    @comment = Comment.new
  end

  def edit
  end

  def update
    if product.update(product_attributes)
      flash[:success] = "V'oila!"
      redirect_to products_path
    else
      flash[:error] = 'Nie poszło nam...'
      render :edit
    end
  end

  def destroy
    if product.destroy
      flash[:success] = "V'oila!"
      redirect_to products_path
    else
      flash[:success] = "Nie poszło nam.."
      redirect_to products_path
    end
  end

  private

  def product_attributes
    params.require(:product).permit(:name, :description)
  end
end
