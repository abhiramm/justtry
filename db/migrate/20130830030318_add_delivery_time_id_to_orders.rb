class AddDeliveryTimeIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_time_id, :integer
  end
end
