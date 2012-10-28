class Series < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :courses
  validates_presence_of :title, :description
end
