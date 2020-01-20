class BooksController < ApplicationController

  def new
   @book = Book.new
  end
   def create
         book = Book.new(list_params)
         book.save
        # トップ画面へリダイレクト
        redirect_to ''
    end

    def show
        @book = Book.find(params[:id])
    end
    private
     
    def book_params
        params.require(:book).permit(:title, :body)
    end
end
