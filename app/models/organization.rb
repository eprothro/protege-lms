class Organization < ActiveRecord::Base
  has_many :teams
  has_many :users, through: :teams
  belongs_to :creator, class_name: 'User'

  attr_accessible :name, :description, :gravatar_email, :creator_id, :creator

  validates_presence_of :name, :creator_id

  after_create :add_creator_to_owners_team


  private

  def add_creator_to_owners_team
    self.teams.create!(name: 'Owners')
    self.teams.first.members << self.creator
  end
end