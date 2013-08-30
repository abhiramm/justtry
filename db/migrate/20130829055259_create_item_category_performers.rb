class CreateItemCategoryPerformers < ActiveRecord::Migration
  def change
    create_table :item_category_performers do |t|
      t.integer :item_category_id
      t.integer :performer_id

      t.timestamps
    end
  end
end
