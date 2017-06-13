class BooksController < ApplicationController

# find the views but only for the the actions listed
before_action :find_book, only: [:show, :edit, :update,:destroy]

def index 
  # this shows the book in descending order  
  @books = Book.all.order(created_at: :desc)
end


def show
  # the action comment out below is executed in the find book function
  # @book = Book.find(params[:id])  
end

def new 
  @book = Book.new 
end

def create 
  @book = Book.new(book_params)

  if @book.save
    redirect_to root_path
  else
    render 'new' 
  end
end

def edit

end

def update
   #This makes sure that the book is updated once the params are changed
  if @book.update(book_params)
    redirect_to book_path(@book)
  else
    render 'edit'
    end   
  end

def destroy
  @book.destroy 
  redirect_to root_path
end

private

def book_params
    params.require(:book).permit(:title, :description, :author)
end

# function for show
def find_book
  # this allows you to find a book through the book_id
  @book = Book.find(params[:id])
  end
end
