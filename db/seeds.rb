# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {email: "alex@email.com", encrypted_password: "password", username: "neiva", city: "Fribourg"},
    {email: "felipe@email.com", encrypted_password: "password", username: "felbar", city: "Carouge"},
    {email: "stephane@email.com", encrypted_password: "password", username: "misochan", city: "Lausanne"}])

projects = Project.create([
   {name: "Landing page", description: "Simple landing page for your website", price: 150, duration: "3 days", user_id: 1},
   {name: "Airbnb clone", description: "Airbnb clone for your business", price: 1000, duration: "1 month", user_id: 1},
   {name: "Online store", description: "Multi language online store to grow your business", price: 4500, duration: "3 months", user_id: 1},
   {name: "Useful API", description: "I can create the API you need in just a few days", price: 600, duration: "5 days", user_id: 1},
   {name: "Relational database", description: "I can create any relational database you need, from simple to complex", price: 400, duration: "1 week", user_id: 1}
   ])
