class CommentsController < ApplicationController
	
	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])		
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to comments_path, notice: 'Comment was created'
		else
			redirect_to comments_path, alert: 'There was an error while creating comment'
		end
	end

	def destroy
		comment = Comment.find(params[:id])
		if comment.destroy
			redirect_to comments_path notice: 'Comment was deleted'
		else
			redirect_to comments_path alert: 'There was an error while deleting comment'
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :post_id, :author_id)
	end

end