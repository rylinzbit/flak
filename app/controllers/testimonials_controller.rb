class TestimonialsController < ApplicationController
	def index 
		@testimonials = Testimonial.all
		# response = client.business('fight-like-a-knight-valley-village-2')
		# response = Yelp.client.business('fight-like-a-knight-valley-village-2')

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
