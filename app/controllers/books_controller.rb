class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Posted Ok"
      redirect_to book_path(@book)
    else
      redirect_to books_path
      flash[:notice] = "Posted Failed"
    end
  end

  def root
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Puted Ok"
       redirect_to book_path
    else
      redirect_to edit_book_path(@book)
      flash[:notice] = "Puted Failed"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
