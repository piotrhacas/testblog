class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :commenter

	def comment_info
		"#{body} #{post_id} #{commenter_id}"
	end
end