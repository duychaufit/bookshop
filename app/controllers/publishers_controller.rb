class PublishersController < ApplicationController
  def index
  end

  def new
    @page_title = 'Add a new Publisher'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "Publisher created."
      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def update
    @publisher = Publisher.find params[:id]
    if @publisher.update(publisher_params)
      flash[:notice] = "Publisher updated."
      redirect_to publishers_path
    else
      render 'edit'
    end
  end

  def edit
    @publisher = Publisher.find params[:id]
  end

  def destroy
  end

  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.find params[:id]
  end
  
  private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
end

