class Party < ActiveRecord::Base
  belongs_to :user
  has_many :customers, dependent: :destroy

  validates :tableNum, :user_id, presence: true

  def add_guest
    # add customer_id to table_id
  end

  def remove_guest
    # remove customer_id from table_id
  end

  def check
    # change paid to True
  end

  def total
    # calculate total price of all customers' totals with this tableNum
  end

end