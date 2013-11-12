class PageContent < ActiveRecord::Base
	belongs_to :page
	validates :page_id, :type, :order, :content, presence: true
end
