class User < ActiveRecord::Base
  authenticates_with_sorcery!


  has_many :pledges
  has_many :breakpoints, through: :pledges
  has_many :projects, through: :pledges

  validates :password, :password_confirmation, presence: true
  validates :password, confirmation: true
  validates :email, uniqueness: true
end
