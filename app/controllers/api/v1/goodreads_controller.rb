module Api
  module V1
    class GoodreadsController < ApplicationController
      before_action :ensure_search

      def search
        respond { |_|  render json: query_goodreads(params[:search])}
      end

private

      def ensure_search
        respond { |_| render text: 'search term missing', :status => 400 } unless params[:search]
      end

      def respond
        respond_to do |format|
          format.json { yield }
        end
      end

      def query_goodreads(term)
        Goodreads.query term
      end
    end
  end
end
