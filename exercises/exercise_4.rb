require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Yal", annual_revenue: 0, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |ms|
  puts "Mens store name: #{ms.name} and revenue: #{ms.annual_revenue}"
end

@womens_stores_lt1m = Store.where(womens_apparel: true, annual_revenue: 1_000_000..Float::INFINITY)

@womens_stores_lt1m.each do |ms|
  puts "Womens store name: #{ms.name} and revenue > 1M: #{ms.annual_revenue}"
end