class CreateClipCategoryPerformers < ActiveRecord::Migration
  def change
    create_table :clip_category_performers do |t|
      t.belongs_to :clip_category, index: true
      t.belongs_to :performer, index: true
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
