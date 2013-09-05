class CustomVideo < ActiveRecord::Base
  belongs_to :order
    mount_uploader :path, VideoUploader
end
