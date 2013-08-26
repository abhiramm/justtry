class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :name
      t.belongs_to :location, index: true
      t.belongs_to :white_label, index: true

      t.timestamps
    end
  end
end
