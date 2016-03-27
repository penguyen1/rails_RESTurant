class Customer < ActiveRecord::Base
  belongs_to :party
  has_many :orders, dependent: :destroy
  has_many :foods, :through => :orders

  validates :name, :party_id, presence: true

  def add_customer
    # add new customer to table
  end

  # why remove customer? only remove from party
  # def remove_customer
  #   # remove customer from table
  # end

  def add_order
    # adds food + customer_id to orders 
    # if pair exists, inc by 1
    # update customer_id total
  end

  def total
    # get total of all food costs from customer_id + party_id
  end

end
