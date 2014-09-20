class AddCelebrantIndexToTasks < ActiveRecord::Migration
  def change
    create_table :celebrants_tasks do |t|
      t.index :celebrant_id
      t.integer :celebrant_id
      t.index :task_id
      t.integer :task_id
      t.timestamp
    end
  end
end
