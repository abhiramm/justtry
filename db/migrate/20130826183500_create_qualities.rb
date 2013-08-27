class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|
      t.string :name

      t.timestamps
    end
    add_index :qualities, :name
  end
end
