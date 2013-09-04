class CreateCustomVideos < ActiveRecord::Migration
  def change
    create_table :custom_videos do |t|
      t.string :path

      t.timestamps
    end
  end
end
