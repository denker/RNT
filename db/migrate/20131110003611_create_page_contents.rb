class CreatePageContents < ActiveRecord::Migration
	def change
		create_table :page_contents do |t|
			t.belongs_to :static_page
			t.string :type
			t.integer :order
			t.text :content

			t.timestamps
		end
	end
end
