include PagesHelper
include ApplicationHelper

class PagesController < ApplicationController

	def home
		@tiles = get_commercial_tiles
		@job = get_job_sample
		@markdown = get_marksown_renderer
		@testimonials = random_testimonials(4)
	end

	def rewrite			
	end

	def free
	end

	def prices
		@price_plans = get_price_plans
	end
end