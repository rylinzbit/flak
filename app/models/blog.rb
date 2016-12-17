class Blog < ActiveRecord::Base
	has_many :blog_comments
	has_attached_file :photo, styles: { large: "600x600", medium: "300x300", thumb: "150x150#"}
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	validates :title, :content, presence: true
	
	def next
    	Blog.where("id < ?", id).order("id DESC").first || Blog.last
  	end

  	def previous
    	Blog.where("id > ?", id).order("id ASC").first || Blog.first
  	end
end
