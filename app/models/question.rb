class Question < ActiveRecord::Base
  attr_accessible :body
  has_many  :answers
  has_many  :tips
  belongs_to  :quiz
end
