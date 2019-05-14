require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum = Store.sum(:annual_revenue)

puts "The annual revenue is #{@sum}"

@avg = @sum / Store.count

puts "The annual average revenue is #{@avg}"

@over1m = Store.where(annual_revenue: 1_000_000..Float::INFINITY).count

puts "The nmumber of stores with annual revenue over 1M is #{@over1m}"
