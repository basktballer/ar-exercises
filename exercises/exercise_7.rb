require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please enter a store name"
@storename = gets.chomp

newstore = Store.create(name: @storename)
puts "New store is valid? #{newstore.valid?}"
puts newstore.errors.full_messages
