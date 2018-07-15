class CommentsController < ApplicationController
	
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		respond_to do |format|
			if @comment.save
				format.html { redirect_to post_url(@post), notice: 'Comment was created' }
				format.js
			else
				format.html { redirect_to post_url(@post), alert: 'There was an error while creating comment' }
			end
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