class BooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.new
    @book_detail = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.valid?
      @book.save
      flash[:notice] = 'Book was successfully created.'
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
    return redirect_to books_path if current_user.id != @book.user_id
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.assign_attributes(book_params)
    if @book.valid?
      @book.save
      flash[:notice] = 'Book was successfully updated.'
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy!
    flash[:notice] = 'Book was successfully destroyed.'
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(
        :title,
        :body
    )
  end
end
