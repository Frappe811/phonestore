module Api
  module V1
    class PhonesController < ApplicationController
      def show
        @phone = Phone.find(params[:id])

        respond_to do |format|
          format.json
        end
      end
    end
  end
end