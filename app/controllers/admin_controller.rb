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
		@blog = Blog.new
	end

	def admin_create_blog
		blog = Blog.new( blog_params )
		if blog.save
			flash[:success] = "Blog successfully added"
			redirect_to "/blogs/#{blog.id}"
		else
			@blog = Blog.new
			flash[:errors] = blog.errors.full_messages
			redirect_to :back
		end
	end

	def admin_blog_update
		blog = Blog.find( params[:id] )

		if blog.update_attributes( title: params[:title], content: params[:content])
			flash[:success_modal] = "Blog successfully updated"
		else
			flash[:errors] = blog.errors.full_messages
		end
		redirect_to "/admin_blog/#{params[:id]}"
	end

	def admin_delete_blog
		blog = Blog.find( params[:id] ).delete
		redirect_to '/admin_blogs'
	end

	def admin_classes
	end

	def admin_about
	end

	def admin_updates_board
	end

	def admin_new_update
		newUpdate = HomeUpdate.new( content: params[:content] )
		if newUpdate.save
			flash[:success_modal] = "Update was successfully added"
		else
			flash[:errors]
		end
		redirect_to "/admin_updates_board"
	end

	def admin_gallery
	end

	private
		def blog_params
			params.require(:blog).permit(:title, :photo, :content)
		end

end