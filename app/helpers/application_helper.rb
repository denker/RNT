module ApplicationHelper

	def get_marksown_renderer
		Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	end


end
