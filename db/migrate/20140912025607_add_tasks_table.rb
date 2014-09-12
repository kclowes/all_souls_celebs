class AddTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.timestamp
    end
  end
end
