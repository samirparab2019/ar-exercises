require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Exercise 5: Calculations

# Your code goes here ...

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
total_Rev = Store.sum(:annual_revenue)
puts "Company total revenue = #{total_Rev}"

# On the next line, also output the average annual revenue for all stores.s
avg_Rev = total_Rev/Store.count
puts "Company average revenue = #{avg_Rev}"

# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
count = Store.where("annual_revenue >= 1000000").count
puts "Company has #{count} stores with annual revenue over 1M"