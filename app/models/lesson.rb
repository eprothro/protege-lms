class Lesson < ActiveRecord::Base
  attr_accessible :title, :body, :course_id
  belongs_to :course
  has_one :quiz
  validates_presence_of :title, :body

  def to_s
    "#{title}"
  end
end
