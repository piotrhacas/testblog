class CommentersController < ApplicationController
	
	def index
		@commenters = Commenter.all
		@commenter = Commenter.new
	end

	def show
		@commenter = Commenter.find(params[:id])		
	end

	def new
		@commenter = Commenter.new
	end

	def edit
		@commenter = Commenter.find(params[:id])
	end

	def create
		@commenter = Commenter.create(comment_params)
	end

	def destroy
		commenter = Commenter.find(params[:id])
		if commenter.destroy
			redirect_to commenters_path notice: 'Commenter was deleted'
		else
			redirect_to commenters_path alert: 'There was an error while deleting commenter'
		end
	end

	private
	def comment_params
		params.require(:commenter).permit(:name, :surname)
	end

end