class CartsController < ApplicationController

  def add
   phone = Phone.find(params[:phone_id])
   cart = Cart.find_by(id:session[:cart_id])

   if cart.nil?
     cart = Cart.create
     session[:cart_id] = cart.id
   end

   cart.add(phone)
   redirect_to root_path
  end

  def remove
    phone = Phone.find(params[:phone_id])
    cart = Cart.find_by(id:session[:cart_id])

    if cart != nil
      cart.remove(phone)

    end
    redirect_to root_path

  end
  def show

    @cart = Cart.find(session[:cart_id])
    if @cart.present?

    end

  end
end
