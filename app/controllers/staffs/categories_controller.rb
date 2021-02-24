module Staffs
  class CategoriesController < StaffsController
    before_action :category_find, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.page(params[:page]).per(10)
    end

    def show
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to staffs_categories_path, notice: t('.success', model_name: Category.model_name.human)
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @category.update(category_params)
        redirect_to staffs_category_path, notice: t('.success', model_name: Category.model_name.human)
      else
        render :edit
      end
    end

    def destroy
      @category.destroy
      redirect_to staffs_categories_path, alert: t('.success', model_name: Category.model_name.human)
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end

    def category_find
      @category = Category.find(params[:id])
    end

  end
end

