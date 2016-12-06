require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

p "What is your store's name?"
@user_storename = gets.chomp

Store.create(
    name: @user_storename
    # annual_revenue: 300000,
    # mens_apparel: true,
    # womens_apparel: true
)

pp Store.all



# Your code goes here ...
