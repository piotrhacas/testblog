class Author < ActiveRecord::Base

	validates :name, :surname, presence: true
	
	has_many :posts
	has_many :comments

	scope :old, -> { where('age > 30') }
	scope :young, -> { where('age < 20') }

	before_create :default_age

	def fullname
		"#{name} #{surname}" #ostatnia linia wiec zostanie zwrocona, moglibysmy zrobic return
	end

	private

	def default_age
		self.age = 25 unless age
	end

end