class Quiz < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :lesson
  has_many  :questions
end
