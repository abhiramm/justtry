class Performer < ActiveRecord::Base
  belongs_to :location
  belongs_to :white_label
end
