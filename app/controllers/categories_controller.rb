class CategoriesController < ApplicationController

  def new
    @page_title = 'Add a new Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category created."
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def update
    @category = Category.find params[:id]
    if @category.update(category_params)
      flash[:notice] = "Category updated."
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def destroy
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find params[:id]
    @books = @category.books
    @categories = Category.all
  end
  
  private
      def category_params
        params.require(:category).permit(:name)
      end
  
  end