class Course < ActiveRecord::Base
  attr_accessible :number, :title, :description
  belongs_to :series
  has_many :lessons
  has_many :enrollments
  has_many :students, through: :enrollements
  validates_presence_of :title, :description

  def to_s
    return "[#{number}] #{title}" if number.present?
    "#{title}"
  end
end
