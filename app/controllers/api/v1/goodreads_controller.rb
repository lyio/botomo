require_relative '../../../helpers/goodreads-api.rb'

module Api
  module V1
    class GoodreadsController < ApplicationController

      def search
        search_term = params[:search]

        respond_to do |format|
          format.json { render json: query_goodreads(search_term) }
        end if search_term
      end

      def query_goodreads(term)
        Goodreads::Api.query term
      end
    end
  end
end
