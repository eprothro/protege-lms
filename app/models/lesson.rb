class Lesson < ActiveRecord::Base
  attr_accessible :title, :body :course_id
  belongs_to :course
  validates_presence_of :title, :body
end
