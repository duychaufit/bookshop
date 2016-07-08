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
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
  
  private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
end
