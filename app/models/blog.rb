class Blog < ActiveRecord::Base
	has_many :blog_comments

	validates :title, :photo, :content, presence: true
end
