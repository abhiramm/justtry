class CreateDurations < ActiveRecord::Migration
  def change
    create_table :durations do |t|
      t.string :time

      t.timestamps
    end
    add_index :durations, :time
  end
end
