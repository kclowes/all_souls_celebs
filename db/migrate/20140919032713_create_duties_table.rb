class CreateDutiesTable < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.index :celebrant_id
      t.integer :celebrant_id
      t.index :task_id
      t.integer :task_id
    end
  end
end
