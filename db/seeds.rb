# https://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby
def random(range)
  # https://stackoverflow.com/questions/2752231/random-record-in-activerecord
  range.to_a.sample
end

# Users
99.times do |u|
  User.create!(email: Faker::Internet.email,
              password: "fobar123")
end

# Admins
30.times do |a|
  Admin.create!(email: Faker::Internet.email,
                password: "fobar123")
end

# Stocks
200.times do |s|
  Stock.create!(name: Faker::Color.color_name,
                description: Faker::Lorem.characters(char_count = 150),
                fixed: [true, false].sample,
                admin_id: random(1..10)) # Only the first 10 admins with have the stocks
end

# Orders
130.times do |o|
  user = User.order("RANDOM()").first
  stock = Stock.order("RANDOM()").first
  order = Order.new
  save = user.orders.create(user_id: user.id, stock_id: stock.id)
end
