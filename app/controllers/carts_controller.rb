class CartsController < ApplicationController

  def add
    phone = Phone.find(params[:phone_id])
    cart = Cart.find_by(id: session[:cart_id])

    if cart.nil?
      cart = Cart.create
      session[:cart_id] = cart.id
    end
    cart.add(phone)
    redirect_to :back
  end

  def remove
    phone = Phone.find(params[:phone_id])
    cart = Cart.find_by(id: session[:cart_id])

    if cart != nil
      cart.remove(phone)

    end
    redirect_to carts_path

  end

  def show

      @cart = current_cart
      if @cart.present?

      end
  end

  private
    def current_cart
      @cart = Cart.where(id: session[:cart_id]).first
      @cart = Cart.create if @cart.nil?
      session[:cart_id] = @cart.id
      @cart
    end
end
