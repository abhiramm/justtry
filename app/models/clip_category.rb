class ClipCategory < ActiveRecord::Base
  has_many :clip_category_performers
  has_many :orders
end
