require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Exercise 2: Update the first store
# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.name = "Likewise Apparel"
@store1.save
@store2.save
puts "store 1 name is #{@store1.name}"