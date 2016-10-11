class AdminController < ApplicationController

	def admin_main
	end

	def admin_dashboard
	end

	def admin_blogs
		@blogs = Blog.all
	end

	def admin_blog_show
		@blog = Blog.find(params[:id])
	end

	def admin_new_blog
	end

	def admin_classes
	end

	def admin_about
	end

	def admin_home
	end

	def admin_gallery
	end

end