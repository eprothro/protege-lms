class Tip < ActiveRecord::Base
  belongs_to :question
  attr_accessible :body
end
