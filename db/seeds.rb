# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Project.destroy_all
User.destroy_all

file = URI.open('https://source.unsplash.com/random/?coding')

users = User.create([
    {email: "alex@email.com", password: "password", username: "neiva", city: "Rue Louis-d'Affry, Fribourg"},
    {email: "felipe@email.com", password: "password", username: "felipe", city: "Quai du Cheval-Blanc, Carouge"},
    {email: "stephane@email.com", password: "password", username: "misochan", city: "Rue de Genève, Lausanne"}])

project1 = Project.new(name: "Landing page", description: "Simple landing page for your website", price: 150, duration: "3 days", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project1.photo.attach(io: File.open(Rails.root.join('app/assets/images/project1.jpg')), filename: 'project1.jpg', content_type: 'image/jpg')
project1.save

project2 = Project.new(name: "Airbnb clone", description: "Airbnb clone for your business", price: 1000, duration: "1 month", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project2.photo.attach(io: File.open(Rails.root.join('app/assets/images/project2.jpg')), filename: 'project2.jpg', content_type: 'image/jpg')
project2.save

project3 = Project.new(name: "Online store", description: "Multi language online store to grow your business", price: 4500, duration: "3 months", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project3.photo.attach(io: File.open(Rails.root.join('app/assets/images/project3.jpg')), filename: 'project3.jpg', content_type: 'image/jpg')
project3.save

project4 = Project.new(name: "Useful API", description: "I can create the API you need in just a few days", price: 600, duration: "5 days", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project4.photo.attach(io: File.open(Rails.root.join('app/assets/images/project4.jpg')), filename: 'project4.jpg', content_type: 'image/jpg')
project4.save

project5 = Project.new(name: "Relational database", description: "I can create any relational database you need, from simple to complex", price: 400, duration: "1 week", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project5.photo.attach(io: File.open(Rails.root.join('app/assets/images/project5.jpg')), filename: 'project5.jpg', content_type: 'image/jpg')
project5.save

project6 = Project.new(name: "Android task manager app", description: "I can create any android task manager app", price: 500, duration: "2 weeks", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project6.photo.attach(io: File.open(Rails.root.join('app/assets/images/project6.jpg')), filename: 'project6.jpg', content_type: 'image/jpg')
project6.save

project7 = Project.new(name: "Website", description: "Developping a full website for your company", price: 2500, duration: "3 weeks", user_id: User.first.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project7.photo.attach(io: File.open(Rails.root.join('app/assets/images/project7.jpg')), filename: 'project7.jpg', content_type: 'image/jpg')
project7.save

project8 = Project.new(name: "E-commerce platform", description: "I can developp an e-comerce platform for your company", price: 1500, duration: "2 weeks", user_id: User.last.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project8.photo.attach(io: File.open(Rails.root.join('app/assets/images/project8.jpg')), filename: 'project8.jpg', content_type: 'image/jpg')
project8.save

project9 = Project.new(name: "Logo design", description: "You want a creative and impacting logo for your company?", price: 200, duration: "2 days", user_id: User.last.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project9.photo.attach(io: File.open(Rails.root.join('app/assets/images/project9.jpg')), filename: 'project9.jpg', content_type: 'image/jpg')
project9.save

project10 = Project.new(name: "Navbar design", description: "I can design a great navbar for your website", price: 100, duration: "1 days", user_id: User.last.id, details: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et orci at velit vestibulum tempor eu a augue. Phasellus vitae bibendum risus. Donec dignissim ante sit amet ligula lacinia feugiat. Quisque id velit non orci fermentum vulputate. Phasellus laoreet elementum erat, eu ultrices lectus. Vestibulum commodo non ipsum at pulvinar. Cras eget auctor tellus, ut accumsan diam. Ut justo urna, accumsan a diam iaculis, laoreet dignissim diam. Proin accumsan, massa eget tempor congue, quam est auctor enim, eget gravida tellus enim vel magna. Vivamus eget nunc id turpis tempus eleifend. Maecenas pellentesque lacinia sollicitudin. Pellentesque sit amet luctus justo. Vivamus mattis tellus magna, cursus dignissim metus venenatis viverra. Mauris ut laoreet felis, et lacinia arcu. Etiam rhoncus congue porttitor.")
project10.photo.attach(io: File.open(Rails.root.join('app/assets/images/project10.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project10.save

order1 = Order.new(status: "Accepted", user_id: User.first.id, project_id: Project.first.id)
order1.save
