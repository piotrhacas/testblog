class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :author

	def comment_info
		"#{body} #{post_id} #{author_id}"
	end
end