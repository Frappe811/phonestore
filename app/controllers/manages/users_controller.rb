module Manages
  class UsersController < ManagesController
    def index
      @users = User.page(params[:page]).per(12)
    end
    def show
    end
  end
end
