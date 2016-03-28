class Order < ActiveRecord::Base
  belongs_to :food
  belongs_to :customer

  validates :customer_id, :food_id, presence: true
  # after_create :update_total        # used to update order total after adding an order

  def update_total
    # how to update order total after adding an order???
  end

  # add 1 to quantity 
  def plus_order
  end

  # subtract 1 to quantity
  def minus_order
  end

end