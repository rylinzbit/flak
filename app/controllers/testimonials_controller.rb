class TestimonialsController < ApplicationController
	def index 
		@testimonials = Testimonial.all
	end

	def like
		testimonial = Testimonial.find(params[:id])
		testimonial.increment!(:likes)
		redirect_to :back
	end

	def create
		@testimonial = Testimonial.new(testimonial_params)
		if @testimonial.save
			redirect_to "/testimonials"
		else
			flash[:errors] = @testimonial.errors.full_messages
			redirect_to :back
		end
	end

  private
    def testimonial_params
      params.require(:testimonial).permit(:name, :projects, :content)
    end	

end
