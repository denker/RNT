module PagesHelper

	def random_testimonials(number)
		testimonials = Testimonial.all
		id_array = []
		testimonials.each { |t| id_array << t.id }
		output = []
		id_array.sample(number).each { |id| output << testimonials.find(id) }
		return output
	end

end