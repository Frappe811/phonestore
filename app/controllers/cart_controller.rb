class CartController < ApplicationController
  def add
    id = params[:id]
    #neu cart da dc tao thi,tao ra mot cart khac de add phone
      if session[:cart] then
        cart = session[:cart]
      else
        session[:cart] = {}
        cart = session[:cart]
      end
    #neu phone da dc add
      if cart[id] then
        cart[id] = cart[id] + 1
      else
        cart[id] = 1
      end
    redirect_to :action => :index
  end
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end


  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}


  end
  end
end
