class IllustrationsController < ApplicationController

	def index
		@illustrations = Illustration.all
	end

	def show
		@illustration = Illustration.find(params[:id])
	end

	def new
	end

  def create
  	#render plain: params[:article].inspect
	  @illustration = Illustration.new(illustration_params)
	 
	  if @illustration.save                     ## save the record
      redirect_to @illustration, notice: 'Issue was successfully created.'
    else
      render action: 'new'
    end
	end
	 
	private
	  def illustration_params
	    params.require(:illustration).permit(:title, :path, :description)
	  end

end
