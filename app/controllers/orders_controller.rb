class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    curren_user_id = current_user.id
    @carts = Cart.where(user_id: curren_user_id).page(params[:page]).per(12)
  end
  def new
    @cart = Cart.find_by(id: session[:cart_id])
  end
  def create
    curren_user_id = current_user.id
    cart = Cart.find_by(id: session[:cart_id])
    cart.update(user_id:curren_user_id,status:1 )
    cart.save
    session[:cart_id] = nil
    redirect_to orders_path
  end

end
