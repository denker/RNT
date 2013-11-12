class AddPricingTesttextRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :price_plan, :string
  	add_column :requests, :test_text, :text
  end
end
