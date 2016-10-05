class Lesson < ActiveRecord::Base
	validates :title, :description, :photo, presence: true
end
