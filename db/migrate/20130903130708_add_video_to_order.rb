class AddVideoToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :custom_video_id, :integer
  end
end
