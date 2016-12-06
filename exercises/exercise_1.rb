require_relative '../setup'

puts "Exercise 1"
puts "----------"


# Your code goes below here ...
# class Store < ApplicationRecord
# end

Store.create([
  {
    name: "Burnaby",
    annual_revenue: 300000,
    mens_apparel: true,
    womens_apparel: true,
  },
  {
    name: "Richmond",
    annual_revenue: 1260000,
    mens_apparel: false,
    womens_apparel: true,
  },
  {
    name: "Gastown",
    annual_revenue: 190000,
    mens_apparel: true,
    womens_apparel: false,
  },
  {
    name: "Langley",
    annual_revenue: -20,
    mens_apparel: true,
    womens_apparel: false,
  }
])

# pp Store.all
# pp Store.count
