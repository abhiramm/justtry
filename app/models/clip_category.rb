class ClipCategory < ActiveRecord::Base
  has_many :clip_category_performers
end
