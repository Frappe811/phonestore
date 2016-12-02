class PhonesController < ApplicationController
  def index
    category = Category.find_by_id(params[:id])
    keyword = params[:q]
    @category = category
    @keyword = keyword
    if keyword == nil
      if category == nil
        @phones = Phone.page(params[:page]).per(12)
      else
        @phones = category.phones.page(params[:page]).per(12)
      end
    else
      if keyword == ""
        @phones = Phone.page(params[:page]).per(12)
      else
        @phones = Phone.search_by_name(keyword).page(params[:page]).per(12)
        @count = @phones.total_count
      end
    end
  end

  def show
    @phone = Phone.find(params[:id])
  end
end
