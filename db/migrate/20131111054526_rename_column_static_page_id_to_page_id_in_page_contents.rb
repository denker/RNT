class RenameColumnStaticPageIdToPageIdInPageContents < ActiveRecord::Migration
  def change
  	rename_column :page_contents, :static_page_id, :page_id
  end
end
