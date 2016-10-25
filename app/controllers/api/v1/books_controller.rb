module Api
  module V1
    class BooksController < ApplicationController

      def index
        @books = Book.all
        respond_to do |format|
          format.json { render json: @books }
        end
      end

      def create
          book = Book.new(book_params)

          if book.save!
            render json: book
          end
      end

      def book_params
        params.require(:book).permit(:title, :subtitle, :author, :year)
      end
    end
  end
end
