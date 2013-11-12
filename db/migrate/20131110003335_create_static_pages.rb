class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :page_name

      t.timestamps
    end
  end
end
