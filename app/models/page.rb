class Page < ActiveRecord::Base
	has_many :page_contents, dependent: :destroy
end
