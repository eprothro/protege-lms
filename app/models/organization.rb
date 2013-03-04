class Organization < ActiveRecord::Base
  has_many :teams
  has_many :users, through: :teams

  attr_accessible :name, :description, :gravatar_email

  validates_presence_of :name
end