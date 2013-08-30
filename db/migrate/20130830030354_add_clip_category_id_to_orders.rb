class AddClipCategoryIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :clip_category_id, :integer
  end
end
