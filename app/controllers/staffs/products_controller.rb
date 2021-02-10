module Staffs
  class ProductsController < StaffsController
    
    def index
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def show
    end

    def destroy
    end

    private

    def product_params
      params.require(:product).premit(:name, :price, :description, :category_id)
    end
  end
end 
