module Api
  module V1
    class BooksController < ApplicationController

      def index
        @books = search_for_books params[:search] if params[:search]
        @books = Book.all if !params[:search]

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

      private

      def book_params
        params.require(:book).permit(:title, :subtitle, :author, :year)
      end

      def search_for_books search_term
        sanitized = "%#{search_term}%"
        Book.where(
          "author LIKE  ? OR title LIKE ? OR subtitle LIKE ?",
          sanitized,
          sanitized,
          sanitized)
      end
    end
  end
end
