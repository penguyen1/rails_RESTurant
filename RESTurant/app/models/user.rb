class User < ActiveRecord::Base

  validates :username, presence :true, uniqueness: true
  has_secure_password   # Rails User Auth!
  
end