class BooksController < ApplicationController


def index   
  @books = Book.all.order(created_at: :desc)
end

def new 
  @book = Book.new 


def create 
  @book = Book.new(book_params)

  if @book.save
    redirect_to root_path
  else
    render 'new' 
  end
end

private

  def book_params
    params.require(:book).permit(:title, :description, :author)
  end

end
