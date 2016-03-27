# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.destroy_all
Customer.destroy_all
Order.destroy_all
Party.destroy_all

Party.create(guests: 3, paid: false, total: 0.0, user_id: 1)

food_data = [
  { name: "Pho",
    cuisine: "Vietnamese",
    price: 7.65,
    allergins: "Peanuts, MSG",
    description: "The cure to all hangovers and sicknesses"
  }, 
  { name: "Pad Thai",
    cuisine: "Thai",
    price: 10.95,
    allergins: "Peanuts, Eggs, Dairy",
    description: "Thailand's most popular, delicious and internationally known entree"
  }, 
  { name: "PB&J",
    cuisine: "American",
    price: 1.75,
    allergins: "Peanuts",
    description: "Quick, easy and super dericious on-the-go snack"
  }, 
  { name: "BLT",
    cuisine: "American",
    price: 2.25,
    allergins: "Bacon",
    description: "So simple yet so freaking delicious"
  }
]

food_data.each do |food|
  Food.create!({
    name: food[:name],
    cuisine: food[:cuisine],
    price: food[:price],
    allergins: food[:allergins],
    description: food[:description]
  })
end

customer_data = [
  {
    name: "Peter",
    total: 0,
    party_id: 1
  },
  {
    name: "Momo",
    total: 0,
    party_id: 1
  },
  {
    name: "Tree",
    total: 0,
    party_id: 1
  }
]

customer_data.each do |cust|
  Customer.create!({
    name: cust[:name],
    total: cust[:total],
    party_id: cust[:party_id]
  })
end

Order.create(customer_id: 1, food_id: 1, quantity: 1)
Order.create(customer_id: 1, food_id: 2, quantity: 1)
Order.create(customer_id: 1, food_id: 3, quantity: 4)
Order.create(customer_id: 1, food_id: 4, quantity: 1)
Order.create(customer_id: 2, food_id: 3, quantity: 1)
Order.create(customer_id: 2, food_id: 2, quantity: 2)



















