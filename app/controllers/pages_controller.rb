include PagesHelper
include ApplicationHelper

class PagesController < ApplicationController

	def home
		@button = {
			:action => 'open_popup_path',
			:text => 'Заказать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {}
		}
		@after_button = @button.clone
		@after_button2 = @button.clone
		@after_button[:text] = 'Сделайте так же!'
		@after_button2[:text] = 'Не верите? Попробуйте бесплатно!'
		@after_button2[:params] = {:request_type => 'testdrive'}
		@tiles = get_commercial_tiles
		@job = get_job_sample
		@markdown = get_marksown_renderer
		@testimonials = random_testimonials(4)
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