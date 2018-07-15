class Post < ActiveRecord::Base

	validates :title, :content, presence: true
	validates :title, uniqueness: true
	validates :title, length: { maximum: 80 }
	validates :content, length: { in: 10..500 }

	scope :old, -> { where('created_at < ?', 40.minutes.ago) }

	has_many :comments
	belongs_to :author#, optional: true

	def post_info
		"#{title} #{content}"
	end
end