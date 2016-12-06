require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create([
  {
    first_name: "Khurram",
    last_name: "Virani",
    hourly_rate: 60
  },
  {
    first_name: "Don",
    last_name: "Burls",
    hourly_rate: 70
  }
])

@store2.employees.create([
  {
    first_name: "Anthony",
    last_name: "Grant",
    hourly_rate: 100
  },
  {
    first_name: "Josh",
    last_name: "Coles",
    hourly_rate: 20
  }
])

pp Employee.all
