class PapersController < ApplicationController
  def new
  	@paper = Paper.new
  end

  def edit
  	@paper = Paper.find(params[:id])
	end

  def create
	  @paper = Paper.new(paper_params)
	 
	  @paper.save

  	render 'new'
	end

	def show
    @paper = Paper.find(params[:id])
  end

  def update
	  @paper = Paper.find(params[:id])
	 
	  @paper.update(paper_params)
	  render 'edit'
	end

	def destroy
	  @paper = Paper.find(params[:id])
	  @paper.destroy
	 
	  redirect_to papers_path
	end

  def index
    @papers = Paper.all
  end

	private
	  def paper_params
	    params.require(:paper).permit(:title, :venue, :year)
	  end
end
