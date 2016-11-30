class PhonesController < ApplicationController
  def index
    category = Category.find_by_id(params[:id])
    @category = category
    if category == nil
      @phones = Phone.page(params[:page]).per(12)
    else
      @phones = category.phones.page(params[:page]).per(12)
    end
  end

  def show
    @phone = Phone.find(params[:id])
  end
end
