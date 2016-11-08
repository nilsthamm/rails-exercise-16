class PapersController < ApplicationController
  def new
  	@paper = Paper.new
  end

  def create
	  @paper = Paper.new(paper_params)
	 
	  @paper.save

  	render 'new'
	end

	def show
    @paper = Paper.find(params[:id])
  end

	def destroy
	  @author = Author.find(params[:id])
	  @author.destroy
	 
	  redirect_to authors_path
	end

  def index
    @papers = Paper.all
  end

	private
	  def paper_params
	    params.require(:paper).permit(:title, :venue, :year)
	  end
end
