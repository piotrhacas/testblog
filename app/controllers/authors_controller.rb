class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to authors_path, notice: 'Author was created'
		else
			render :new
		end
	end

	def edit
		@author = Author.find(params[:id])
	end

	def update
		@author = Author.find(params[:id])
		if @author.update(author_params)
			redirect_to authors_path, notice: 'Author was updated'
		else
			render :edit
		end
	end

	def destroy
		author = Author.find(params[:id])
		if author.destroy
			redirect_to authors_path notice: 'Author was deleted'
		else
			redirect_to authors_path alert: 'There was an error while deleting'
		end
	end

	private
	def author_params
		params.require(:author).permit(:name, :surname, :age)
	end
end