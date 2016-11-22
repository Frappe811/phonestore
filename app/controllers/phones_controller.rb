class PhonesController < ApplicationController
  def index
    @phones = Phone.page(params[:page]).per(10)
  end
end
