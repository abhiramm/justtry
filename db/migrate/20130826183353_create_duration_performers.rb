class CreateDurationPerformers < ActiveRecord::Migration
  def change
    create_table :duration_performers do |t|
      t.belongs_to :duration, index: true
      t.belongs_to :performer, index: true
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
