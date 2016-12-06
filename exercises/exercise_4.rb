require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create([
  {
    name: "Surrey",
    annual_revenue: 224000,
    mens_apparel: false,
    womens_apparel: true,
  },
  {
    name: "Whistler",
    annual_revenue: 1900000,
    mens_apparel: true,
    womens_apparel: false,
  },
  {
    name: "Yaletown",
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true,
  }
])



#Print annual revenue of all mens stores
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
    puts "Mens Store Report: The #{store[:name]} store had an annual revenue of #{store[:annual_revenue]}"
end

# Refactored @mens_stores, result stored in array
# pp @mens_stores.collect { |s| "The #{s[:name]} store had an annual revenue of #{s[:annual_revenue]}"}


@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@womens_stores.each do |store|
  puts "Womens Store Report: The #{store[:name]} store had an annual revenue of #{store[:annual_revenue]}"
end
#Print stores that carry women's apparel and are generating less than $1M in annual revenue.
# pp @womens_stores
# pp @mens_stores
# pp Store.all
