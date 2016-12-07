module Api
  module V1
    class CartsController < ApplicationController

      def add
        phone = Phone.find(params[:phone_id])
        @cart = Cart.find_by(id: session[:cart_id])
        @cart = current_cart
        @cart.add(phone)

        respond_to do |format|
          format.html { redirect_to carts_path }
          format.js { render :add }
        end

      end

      def remove
        phone = Phone.find(params[:phone_id])
        @cart = Cart.find_by(id: session[:cart_id])

        if @cart != nil
          @cart.remove(phone)
          respond_to do |format|
            format.js { render :add }
          end
        end

      end

      def show
        @cart = current_cart
      end

      private
      def current_cart
        @cart = Cart.where(id: session[:cart_id]).first
        @cart = Cart.create if @cart.nil?
        session[:cart_id] = @cart.id
        @cart
      end
    end
  end
end

