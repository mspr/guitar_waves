class TutorialsController < ApplicationController

	def index
		@tutorials = Tutorial.all
	end

	def show
		@tutorial = Tutorial.find(params[:id])
	end

	def new
		@tutorial = Tutorial.new
	end
	
	def edit
		@tutorial = Tutorial.find(params[:id])
	end
	
	def create
		@tutorial = Tutorial.new(tutorial_params_from_view)
		
		if @tutorial.save
			redirect_to @tutorial
		else
			render 'new'
		end
	end
	
	def update
		@tutorial = Tutorial.find(params[:id])
		
		if @tutorial.update(tutorial_params_from_view)
			redirect_to @tutorial
		else
			render 'edit'
		end
	end
	
	def destroy
		@tutorial = Tutorial.find(params[:id])
		@tutorial.destroy
		
		redirect_to tutorials_path
	end
	
	private
		def tutorial_params_from_view
			params.require(:tutorial).permit(:title)
		end
end
