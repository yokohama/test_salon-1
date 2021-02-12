module Members
  class ProductsController < MembersController

    def index
      @products = Product.includes(:category)
      @categorys = Category.includes(:products)
    end

    def show
      @product = Product.find(params[:id])
    end
  end
end
