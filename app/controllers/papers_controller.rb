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

	private
	  def paper_params
	    params.require(:paper).permit(:title, :venue, :year)
	  end
end
