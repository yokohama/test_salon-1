module Members
  class ProductsController < MembersController

    def index
      @products = Product.includes(:category).page(params[:page])
    end

    def show
      @product = Product.find(params[:id])
    end
  end
end
