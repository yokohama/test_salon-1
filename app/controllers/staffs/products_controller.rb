module Staffs
  class ProductsController < StaffsController
    
    def index
      @products = Product.includes(:category)
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to staffs_products_path
      else
        render :new
      end
    end

    def edit
      @product = Product.find(params[:id])
      if @product.save
        redirect_to staffs_products_path
      else
        render :new
      end
    end

    def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to staffs_product_path
      else
        render :edit
      end
    end

    def show
      @product = Product.find(params[:id])
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to staffs_products_path
    end

    private

    def product_params
      params.require(:product).premit(:name, :price, :description, :category_id)
    end
  end
end 
