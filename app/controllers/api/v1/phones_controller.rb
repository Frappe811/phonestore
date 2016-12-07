module Api
  module V1
    class PhonesController < ApplicationController
      def index
        category = Category.find_by_id(params[:id])
        keyword = params[:q]
        @category = category
        @keyword = keyword
        if keyword == nil
          if category == nil
            @phones = Phone.order('name').where(flag: true).page(params[:page]).per(12)
          else
            @phones = category.phones.order('name').where(flag: true).page(params[:page]).per(12)
          end
        else
          if keyword == ""
            @phones = Phone.order('name').where(flag: true).page(params[:page]).per(12)
          else
            @phones = Phone.search_by_name(keyword).order('name').where(flag: true).page(params[:page]).per(12)
            @count = @phones.total_count
          end
        end
      end

      def show
        @phone = Phone.find(params[:id])

        respond_to do |format|
          format.json
        end
      end
    end
  end
end

