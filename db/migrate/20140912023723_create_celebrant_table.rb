class CreateCelebrantTable < ActiveRecord::Migration
  def change
    create_table :celebrants do |t|
      t.string :name
      t.timestamp
    end
  end
end
