class Course < ActiveRecord::Base
  attr_accessible :number, :title, :description
  belongs_to :series
  has_many :lessons
  validates_presence_of :title, :description

  def to_s
    return "[#{number}] #{title}" if number.present?
    "#{title}"
  end
end
