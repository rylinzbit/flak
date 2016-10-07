class Lesson < ActiveRecord::Base
	validates :title, :description, presence: true
end
