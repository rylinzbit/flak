class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def show
		@blog = Blog.find(params[:id])
		@comments = @blog.blog_comments.all
		render "show"
	end

	def create_comment
		@submitted = BlogComment.new( comment_params )
		if @submitted.save
			redirect_to "/show/#{@submitted.blog_id}"
		else
			flash[:errors] = "Comment was not saved"
			redirect_to :back
		end
	end

	private
		def comment_params
			params.require(:comment).permit(:name, :comment, :blog_id)
		end
end
