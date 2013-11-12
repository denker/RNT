class AddButtonToPageContents < ActiveRecord::Migration
  def change
    add_column :page_contents, :button, :string
  end
end
