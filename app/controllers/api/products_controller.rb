class Api::ProductsController < Api::ApiController
  before_action :set_product, only: [:show, :update, :destroy]
  
  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private 

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:description, :price, :department)
    end
end
