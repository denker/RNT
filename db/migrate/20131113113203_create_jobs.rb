class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :source
      t.text :output

      t.timestamps
    end
  end
end
