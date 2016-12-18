class MainController < ApplicationController

	def home
		@blogs = Blog.order('created_at DESC').limit(2)
		@newUpdates = HomeUpdate.all
	end

	def create_email
		@subscribed = EmailSubscriber.new( email_params )
		if @subscribed.save
			flash[:success_modal] = "Welcome to the FLaK email list"
		else
			flash[:errors] = @subscribed.errors.full_messages
		end
		redirect_to "/home"
	end

	private
		def email_params
			params.require(:subscriber).permit(:email)
		end

end
