class BooksController < ApplicationController
  def index
    @book= Book.new
    @Books= Book.all
  end

  def create
    @book= Book.new(book_params)
    @book.save
    redirect_to book_path(@books.id)
  end

  def show
    
  end

  def edit
  end
end
