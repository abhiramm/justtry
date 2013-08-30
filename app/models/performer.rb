class Performer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
end
