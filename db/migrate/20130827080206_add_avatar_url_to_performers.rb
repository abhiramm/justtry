class AddAvatarUrlToPerformers < ActiveRecord::Migration
  def change
    add_column :performers, :avatar, :text
  end
end
