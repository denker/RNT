class TestimonialsController < ApplicationController

	before_action :load
	before_action :set_t, only: [:show, :edit, :update, :destroy]

	def index		
	end

	def create
		@testimonial = Testimonial.new(request_params)    
		if @testimonial.save			
			@testimonials = Testimonial.all
		end
	end

	def destroy
		@testimonial.destroy      	
		@testimonials = Testimonial.all
	end

	private

	def load
		@testimonials = Testimonial.all
		@testimonial = Testimonial.new
	end

	def set_t
		@testimonial = Testimonial.find(params[:id])
	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
    	params.require(:testimonial).permit(:customer_name, :text)
    end

end
