class Series < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :courses
  validates_presence_of :title, :description

  def to_s
    "#{title}"
  end
end
