class Testimonial < ActiveRecord::Base
	validates :name, :content, presence: true
end
