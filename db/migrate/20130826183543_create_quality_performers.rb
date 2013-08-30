class CreateQualityPerformers < ActiveRecord::Migration
  def change
    create_table :quality_performers do |t|
      t.belongs_to :quality, index: true
      t.belongs_to :performer, index: true
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
