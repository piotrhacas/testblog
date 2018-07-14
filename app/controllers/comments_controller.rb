class CommentsController < ApplicationController
	
	def index
		@comments = Comment.all
		@comment = Comment.new
	end



	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		if @comment.save
			redirect_to posts_path, notice: 'Comment was created'
		else
			redirect_to posts_path, alert: 'There was an error while creating comment'
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		if @comment.destroy
			redirect_to posts_path notice: 'Comment was deleted'
		else
			redirect_to posts_path alert: 'There was an error while deleting comment'
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :commenter_id)
	end

end