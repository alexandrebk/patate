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

PotatoQuotation.create!(
  price_per_ton: 34.67,
  priced_at: DateTime.new(2022, 11, 12, 9,0,0)
)

PotatoQuotation.create!(
  price_per_ton: 38.67,
  priced_at: DateTime.new(2022, 11, 12, 9,30,0)
)

PotatoQuotation.create!(
  price_per_ton: 33.97,
  priced_at: DateTime.new(2022, 11, 12, 10,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 35.97,
  priced_at: DateTime.new(2022, 11, 12, 10,30,0)
)

PotatoQuotation.create!(
  price_per_ton: 35.97,
  priced_at: DateTime.new(2022, 11, 13, 9,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 34.97,
  priced_at: DateTime.new(2022, 11, 13, 9,30,0)
)

PotatoQuotation.create!(
  price_per_ton: 34.97,
  priced_at: DateTime.new(2022, 11, 14, 9,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 100.00,
  priced_at: DateTime.new(2022, 11, 14, 18,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 100.00,
  priced_at: DateTime.new(2022, 11, 15, 9,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 110.00,
  priced_at: DateTime.new(2022, 11, 15, 9,30,0)
)

PotatoQuotation.create!(
  price_per_ton: 100.00,
  priced_at: DateTime.new(2022, 11, 15, 10,00,0)
)

PotatoQuotation.create!(
  price_per_ton: 110.00,
  priced_at: DateTime.new(2022, 11, 15, 10,30,0)
)

puts "#{PotatoQuotation.count} quotations created"
