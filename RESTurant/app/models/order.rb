class Order < ActiveRecord::Base
  belongs_to :food
  belongs_to :customer

  validates :customer_id, :food_id, presence: true

  def plus_order
    # add 1 to quantity 
  end

  def minus_order
    # subtract 1 to quantity
  end

end