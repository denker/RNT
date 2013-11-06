class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
