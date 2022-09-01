class BooksController < ApplicationController
  def index
    @book= Book.new
    @Books= Book.all
  end

  def create
    @book= Book.new(book_params)
    # @book.user_id=current_user.id
    if @book.save
      redirect_to book_path(@book.id)
    else
      @book= Book.all
      render :index
    end
  end

  def show
    @book= Book.find(params[:id])
  end

  def edit
    @book= Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
