class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :location, :bio

  has_and_belongs_to_many :teams
  has_many :organizations, through: :teams
  has_many :enrollments
  has_many :courses, through: :enrollments
end
