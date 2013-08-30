class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :location_id
      t.integer :performer_id
      t.integer :duration_id
      t.integer :quality_id
      t.timestamps
    end
  end
end
