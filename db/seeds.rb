# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create!(title: 'Cool Thing', description: %{<p>This thing is really cool</p>}, image_url: 'awesome.png', price: 54.50)
Product.create!(title: 'Uncool Thing', description: %{<p>This isn't very good</p>}, image_url: 'not_so_awesome.png', price: 10.00)
