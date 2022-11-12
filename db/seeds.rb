# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroy all data"
PotatoQuotation.destroy_all

puts "Creating data"
today = Date.today
day = today.day
year = today.year
month = today.month

PotatoQuotation.create!(
  price_per_ton: 34.67,
  priced_at: DateTime.new(year, month, day, 9,0,0)
)

PotatoQuotation.create!(
  price_per_ton: 35.43,
  priced_at: DateTime.new(year, month, day, 10,45,0)
)

PotatoQuotation.create!(
  price_per_ton: 38.65,
  priced_at: DateTime.new(year, month, day, 12,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 37.54,
  priced_at: DateTime.new(year, month, day, 15,30,0)
)

PotatoQuotation.create!(
  price_per_ton: 33.97,
  priced_at: DateTime.new(year, month, day, 9,30,0)
)

puts "#{PotatoQuotation.count} quotations created"
