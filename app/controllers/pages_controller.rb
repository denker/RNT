# #encoding: utf-8

include PagesHelper

class PagesController < ApplicationController

	def home
		@button = {
			:action => 'open_popup_path',
			:text => 'Заказать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {}
		}
		@tiles = get_commercial_tiles
		@job = get_job_sample
		@testimonials = random_testimonials(2)
	end

	def rewrite
		@button = {
			:action => 'open_popup_path',
			:text => 'Заказать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {}
		}
	end

	def contacts
	end

	def free
		@button = {
			:action => 'open_popup_path',
			:text => 'Попробовать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {:request_type => 'testdrive'}
		}
	end

	def prices
		@price_plans = get_price_plans
	end
end