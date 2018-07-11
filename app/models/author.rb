class Author < ActiveRecord::Base

	validates :name, :surname, presence: true
	
	# has_many :author_posts
	# has_many :posts, through: :author_posts
	has_many :posts

	def fullname
		"#{name} #{surname}" #ostatnia linia wiec zostanie zwrocona, moglibysmy zrobic return
	end
end