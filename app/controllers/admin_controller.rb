class AdminController < ApplicationController

	def admin_main
		if admin_signed_in?
			redirect_to "/admin_dashboard"
		else
			render "admin_main"
		end
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