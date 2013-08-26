class ClipCategoryPerformers < ActiveRecord::Base
  belongs_to :clip_category
  belongs_to :performer
end
