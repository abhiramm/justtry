class Location < ActiveRecord::Base
  has_many :white_labels
  has_many :performers
  has_many :orders
end
