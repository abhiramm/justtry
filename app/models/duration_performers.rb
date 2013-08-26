class DurationPerformers < ActiveRecord::Base
  belongs_to :duration
  belongs_to :performer
end
