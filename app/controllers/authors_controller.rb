class AuthorsController < ApplicationController
  def new
  	@author = Author.new
  end

  def edit
  	@author = Author.find(params[:id])
	end

  def create
	  @author = Author.new(author_params)
	 
	  @author.save

  	render 'new'
	end

	def show
    @author = Author.find(params[:id])
  end

  def update
	  @author = Author.find(params[:id])
	 
	  @author.update(author_params)
	  render 'edit'
	end

  def index
    @authors = Author.all
  end

	private
	  def author_params
	    params.require(:author).permit(:first_name, :last_name, :homepage)
	  end
end
