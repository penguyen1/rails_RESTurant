class Food < ActiveRecord::Base
  has_many :orders
  # has_many :customers, :through => :orders      # NECESSARY ??

  validates :name, presence: true, uniqueness: true
  validates :cuisine, presence: { message: "Where did this dish originate from?" }
  validates :price, numericality: true, presence: { message: "This dish cant be free" }
  validates :allergins, presence: { message: "Are you sure? We dont want anyone getting sick!" }
  validates :description, presence: { message: "Cmon, what's in it? Or at least give us a fun fact about this dish!" }

  def add_food
    # add food to Food table
  end

  def edit_food(id)
    # edit food_id info in Food table
  end

end