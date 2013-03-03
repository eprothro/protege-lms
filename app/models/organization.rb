class Organization < ActiveRecord::Base
  has_and_belongs_to_many :teams
  has_many :users, through: :teams

end