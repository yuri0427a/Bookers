class BooksController < ApplicationController

  def top
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

   def create
         book = Book.new(book_params)
         book.save
        redirect_to  book_path(book.id)
    end

    def show
        @book = Book.find(params[:id])
    end
    def  destroy
      books= Book.find(params[:id])
      books.destroy
      redirect_to books_path
    end
    private
     
    def book_params
        params.require(:book).permit(:title, :body)
    end
end