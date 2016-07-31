class Testimonial < ActiveRecord::Base
	validates :name, :comment, presence: true
end
