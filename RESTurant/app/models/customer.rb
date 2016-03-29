class Customer < ActiveRecord::Base
  belongs_to :party
  has_many :orders, dependent: :destroy
  has_many :foods, :through => :orders    # NECESSARY??

  validates :name, presence: true
  # after_create :update_total        # used to update customer total after adding/removing food orders

  def add_customer
    # add new customer to table
  end

  def add_order
    # adds food + customer_id to orders 
    # if pair exists, inc quantity by 1
    # update customer_id total
  end

  def update_total
    # how to update customer total after adding/removing an order???
  end

end
