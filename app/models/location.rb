class Location < ActiveRecord::Base
  has_many :white_labels
  has_many :performers
end
