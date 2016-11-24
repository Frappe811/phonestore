class PhonesController < ApplicationController
  def index
    @phones = Phone.page(params[:page]).per(12)
  end
end
