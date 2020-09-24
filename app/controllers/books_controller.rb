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

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redierect_to user_path(current_user.id)
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
