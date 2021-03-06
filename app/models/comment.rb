class Comment < ActiveRecord::Base
	
	validates :body, presence: true
	validates :body, length: { minimum: 5 }

	belongs_to :post
	belongs_to :commenter

	def comment_info
		"#{body} #{post_id} #{commenter_id}"
	end
end