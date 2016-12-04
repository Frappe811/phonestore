class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    curren_user_id = current_user.id
    @carts = Cart.where(user_id: curren_user_id).page(params[:page]).per(12)
  end
end
