module Members
  class CategoriesController < MembersController

    def index
      @categories = Category.all
      @categories = Category.page(params[:page]).per(10)
    end

    def show
      @category = Category.find(params[:id])
    end
  end
end
