class BooksController < ApplicationController
  def index
   
    @books = Book.all
  end

  def new
    @page_title = 'Add a new Book'
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created."
      redirect_to books_path
    else
      render 'new'
    end
  end

  def update
    @book = Book.find params[:id]
    if @book.update(book_params)
      flash[:notice] = "Book updated."
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def edit
    @book = Book.find params[:id]
  end

  def destroy
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    
  end
  
  private
    def book_params
      params.require(:book).permit(
        :title, 
        :category_id, 
        :publisher_id, 
        :author_id, 
        :isbn,
        :format,
        :pages,
        :price,
        :excerpt,
        :buy,
        :year,
        :coverpath
        )
    end
end
