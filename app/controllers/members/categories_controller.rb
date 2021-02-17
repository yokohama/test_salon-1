module Members
  class CategoriesController < MembersController

    def index
      @categories = Category.all
    end

    def show
      @category = Category.find(params[:id])
    end
  end
end
