class Answer < ActiveRecord::Base
  attr_accessible :explanation, :text
  belongs_to  :question
end
