# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#product = Product.create(name:"Толстовка", category_id:1, is_visible:0, position:125, price:4.55)
#product = Product.create(name:"Платье", category_id:1, is_visible:1, position:126, price:8.55)
#category = Category.create(title:"Нижнее белье", is_visible:0, position:4)
#category = Category.create(title:"Аксессуары", is_visible:1, position:5)
product = Product.create(name:"Худи", category_id:1, is_visible:0, position:127, price:7.55)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?