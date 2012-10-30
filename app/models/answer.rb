class Answer < ActiveRecord::Base
  attr_accessible :explanation, :text, :correct
  belongs_to  :question
end
