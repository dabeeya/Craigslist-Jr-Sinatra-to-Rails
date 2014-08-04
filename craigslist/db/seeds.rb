# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'faker'

5.times do
  category = Category.create(title: Faker::Commerce.department)
  10.times do
    category.posts.create(title: Faker::Commerce.product_name, description: Faker::Company.catch_phrase, email: Faker::Internet.email, price: Faker::Commerce.price)
  end
end
