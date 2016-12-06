require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


# Your code goes here ...

@allstores_annual_revenue = Store.sum(:annual_revenue)
pp "The sum of all stores is $#{@allstores_annual_revenue}.00"

@allstores_avg_revenue = (@allstores_annual_revenue / Store.count)

pp "The average sum of all stores is $#{@allstores_avg_revenue}.00"

@countof_stores_greater_than_million = Store.where("annual_revenue >= ?", 1000000).count

pp "There are #{@countof_stores_greater_than_million} stores that have generated more than $1M in annual sales"
