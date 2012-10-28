class Course < ActiveRecord::Base
  attr_accessible :description, :number, :title, :series_id
  belongs_to :series
  has_many :lessons

  def to_s
    return "[#{number}] #{title}" if number.present?
    "#{title}"
  end
end
