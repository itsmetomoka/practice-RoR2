class BooksController < ApplicationController
  def show
  end

  def index
  end

  def edit
  end

  def create
  	book = Book.new(book_params)
  	book.save
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
