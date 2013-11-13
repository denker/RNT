class Testimonial < ActiveRecord::Base
	validates :customer_name, :presence => true
	validates :text, :presence => true
end
