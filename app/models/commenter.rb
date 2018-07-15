class Commenter < ActiveRecord::Base
	
	has_many :comments

	validates :name, :surname, presence: true

	def commenter_info
		"#{name} #{surname}"		
	end
end