class Lesson < ActiveRecord::Base
  attr_accessible :body, :title, :course_id
  belongs_to :course
  validates_presence_of :title, :body
end
