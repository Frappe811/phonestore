class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end
end
