class Admin::BooksController < Admin::ApplicationController
  before_action :find_book, only: %i(show edit update)

  def index
    @books = Book.all
  end

  def show; end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params
    if @book.save
      redirect_to admin_book_path(@book), notice: t('.success')
    else
      flash.now[:alert] = t '.fail'
      render :new
    end
  end

  def edit; end

  def update
    if @book.update(book_params)
      redirect_to admin_book_path(@book), notice: t('.success')
    else
      flash.now[:alert] = t '.fail'
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :price)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
