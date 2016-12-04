module Manages
  class OrdersController < ManagesController
    def index
      keyword = params[:qorder]
      if keyword==nil
        @carts = Cart.order(:updated_at).page(params[:page]).per(12)
      else
        if keyword == ""
          @carts = Cart.order(:updated_at).page(params[:page]).per(12)
        else
          @carts = Cart.search_by_order(keyword).order(:updated_at).page(params[:page]).per(12)
          @count = @carts.total_count
        end
      end
    end
  end
end
