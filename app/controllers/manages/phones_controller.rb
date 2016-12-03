module Manages
  class PhonesController < ManagesController
    before_action :set_phone, only: [:show, :edit, :update, :destroy]

    def index
      category = Category.find_by_id(params[:id])
      @category = category
      if category == nil
        @phones = Phone.order('name').page(params[:page]).per(12)
      else
        @phones = category.phones.order('name').page(params[:page]).per(12)
      end
    end

    def show
    end

    def new
      @phone = Phone.new
    end

    def edit
    end

    def create
      @phone = Phone.new(phone_params)

        if @phone.save
            redirect_to [:manages,@phone]
        else
            @phone.errors
            render :new

        end

    end

    def update

        if @phone.update(phone_params)
          render :edit
        else
          @phone.errors
          render :edit
        end

    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_params
      params.require(:phone).permit(:name, :price, :photo_url, :description ,:display, :os, :back_camera,
                                    :font_camera, :cpu, :ram, :storage, :sp_storage, :sim, :battery, :category_id, :flag)
    end
  end
end