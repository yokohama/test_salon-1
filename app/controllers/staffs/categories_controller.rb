module Staffs
  class CategoriesController < StaffsController
    before_action :category_find, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.all
    end

    def show
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to staffs_categories_path, notice: 'カテゴリを登録しました'
      else
        japan_error_message
        render :new
      end
    end

    def edit
    end

    def update
      if @category.update(category_params)
        redirect_to staffs_category_path, notice: 'カテゴリを編集しました'
      else
        japan_error_message
        render :edit
      end
    end

    def destroy
      @category.destroy
      redirect_to staffs_categories_path, alert: I18n.t(:success)
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end

    def category_find
      @category = Category.find(params[:id])
    end

    def japan_error_message
      if @category.errors.full_messages == ["Name can't be blank"]
        flash.now[:alert] = "nameが入力されていません"
      elsif @category.errors.full_messages == ["Name has already been taken"]
        flash.now[:alert] = "すでに同じ名前が登録されています"
      end
    end

  end
end

