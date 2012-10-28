class Course < ActiveRecord::Base
  attr_accessible :description, :number, :title, :series_id
  belongs_to :series
end
