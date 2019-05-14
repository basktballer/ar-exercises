require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 60)

@emp = @store1.employees.where(first_name: "John")

@emp.each do |e|
  puts "The password is #{e.password}"
end
