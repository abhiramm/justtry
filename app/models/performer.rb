class Performer < ActiveRecord::Base
  attr_accessible :avatar,:profile_gif,:profile_thumb,:photo_id
  belongs_to :location
  belongs_to :white_label
  has_many :clip_category_performers
  has_many :clip_categories, through: :clip_category_performers
  has_many :duration_performers
  has_many :durations, through: :duration_performers
  has_many :delivery_time_performers
  has_many :delivery_times, through: :delivery_time_performers
  has_many :quality_performers
  has_many :qualities, through: :quality_performers
  has_many :item_category_performers
  has_many :orders
  belongs_to :user
    mount_uploader :avatar, AvatarUploader
    mount_uploader :profile_gif, AvatarUploader
    mount_uploader :profile_thumb, AvatarUploader
    mount_uploader :photo_id, AvatarUploader
end
