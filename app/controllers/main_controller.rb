class MainController < ApplicationController

	def home
		@blogs = Blog.order('created_at DESC').limit(3)
		@newUpdates = HomeUpdate.all
	end

	def create_email

	end

end
