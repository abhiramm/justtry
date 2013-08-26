class CreateDeliveryTimePerformers < ActiveRecord::Migration
  def change
    create_table :delivery_time_performers do |t|
      t.belongs_to :delivery_time, index: true
      t.belongs_to :performer, index: true
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
