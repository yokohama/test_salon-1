module Members
  class ProductsController < MembersController

    def index
      @products = Product.includes(:category)
    end

    def show
      @product = Product.find(params[:id])
    end
  end
end
