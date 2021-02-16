module Staffs
  class ProductsController < StaffsController
    before_action :product_find, only: [:edit, :update, :show, :destroy]
    before_action :products_all, only: [:new, :create, :edit, :update]
    
    def index
      @products = Product.includes(:category)
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to staffs_products_path, notice: t('.success')
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @product.update(product_params)
        redirect_to staffs_product_path, notice: t('.success')
      else
        render :edit
      end
    end

    def show
    end

    def destroy
      @product.destroy
      redirect_to staffs_products_path, alert: t('.success')
    end

    private

    def product_params
      params.require(:product).permit(:name, :price, :description, :category_id)
    end

    def product_find
      @product = Product.find(params[:id])
    end

    def products_all
      @categories = Category.all
    end
  end
end 
