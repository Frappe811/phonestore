module Manages
  class CategoriesController < ManagesController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
      keyword = params[:qcategory]
      @keyword = keyword
      if keyword == nil
        @categories = Category.order('brand_name').page(params[:page]).per(12)
      else
        if keyword == ""
          @categories = Category.order('brand_name').page(params[:page]).per(12)
        else
          @categories = Category.search_by_brand_name(keyword).order('brand_name').page(params[:page]).per(12)
          @count = @categories.total_count
        end
      end
    end

    def show
    end

    def new
      @category = Category.new
    end

    def edit
    end

    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to manages_categories_path
      else
        @category.errors
        render :new

      end

    end

    def update

      if @category.update(category_params)
        render :edit
      else
        @category.errors
        render :edit
      end

    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:brand_name, :flag)
    end
  end
end