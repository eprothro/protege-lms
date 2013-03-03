class Team < ActiveRecord::Base
  belongs_to :orgaization
  has_and_belongs_to_many :users

end