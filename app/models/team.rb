class Team < ActiveRecord::Base
  belongs_to :organization
  has_and_belongs_to_many :members, class_name: 'User', association_foreign_key: 'user_id'

  attr_accessible :name
end