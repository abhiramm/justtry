class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :first_name
      t.integer :white_label_id
      t.integer :location_id
      t.string :avatar
      t.string :location
      t.string :photo_id
      t.string :profile_thumb
      t.string :profile_gif

      t.timestamps  
    end
  end
end
