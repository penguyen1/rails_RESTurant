class Party < ActiveRecord::Base
  belongs_to :user
  has_many :customer

  # validates 

  # def after_initialize
  #   if new_record?
  #     guests||= 0
  #     paid  ||= false
  #     total || = 0.0
  #   end
  # end

end