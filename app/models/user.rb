class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :location, :bio

  has_and_belongs_to_many :teams
  has_many :organizations, through: :teams, uniq: true
  has_many :enrollments
  has_many :courses, through: :enrollments

  def to_s
    name || email
  end
  def self.search(query)
    where{(name =~ "%#{query}%") | (email =~ "%#{query}%")}
  end
  def avatar_url(opts={})
    opts[:size] ||= 48
    opts[:email] ||= self.try(:gravatar_email) rescue nil
    opts[:email] ||= self.try(:email) rescue nil

    gravatar_id = Digest::MD5::hexdigest(opts[:email].to_s).downcase

    # 48 px gravatar with mystery man as the default
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{opts[:size]}&d=mm"
  end
end
