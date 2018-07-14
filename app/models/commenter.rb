class Commenter < ActiveRecord::Base
	has_many :comments

	def commenter_info
		"#{name} #{surname}"		
	end
end