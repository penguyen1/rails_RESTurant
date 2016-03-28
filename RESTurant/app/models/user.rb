class User < ActiveRecord::Base
  has_many :parties

  validates :username, presence: true, uniqueness: true
  has_secure_password   # Rails User Auth!
  
end