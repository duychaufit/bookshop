class AuthorsController < ApplicationController
  def index
  end

  def new
    @page_title = 'Add a new Author'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author created."
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def update
    @author = Author.find params[:id]
    if @author.update(author_params)
      flash[:notice] = "Author updated."
      redirect_to authors_path
    else
      render 'edit'
    end
  end

  def edit
    @author = Author.find params[:id]
  end

  def destroy
  end

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find params[:id]
  end
  
  private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
  end

