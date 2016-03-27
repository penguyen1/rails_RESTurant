class Customer < ActiveRecord::Base
  belongs_to :party
  has_many :order
  has_many :food, :through => :order

  # validates :name, presence: true

end
