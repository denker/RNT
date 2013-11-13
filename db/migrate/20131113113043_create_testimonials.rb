class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :customer_name
      t.text :text

      t.timestamps
    end
  end
end
