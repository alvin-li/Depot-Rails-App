# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create!(title: 'Programming Ruby 1.9', description: %{<p>This thing is so awesome you don't even know.</p>}, image_url: 'awesome.png', price: 54.50)
Product.create!(title: 'Building with Rails 4.0', description: %{<p>Can you believe it this is awesome.</p>}, image_url: 'not_so_awesome.png', price: 10.00)
