module Api
  module V1
    class GoodreadsController < ApplicationController

      def index
        respond_to do |format|
          format.json { render json: "GoodreadsController" }
        end
      end
    end
  end
end
