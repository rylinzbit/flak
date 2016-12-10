class Blog < ActiveRecord::Base
	has_many :blog_comments

	validates :title, :content, presence: true
	
	def next
    	Blog.where("id < ?", id).order("id DESC").first || Blog.last
  	end

  	def previous
    	Blog.where("id > ?", id).order("id ASC").first || Blog.first
  	end
end
