# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
User.destroy_all



users = User.create([
    {email: "alex@email.com", password: "password", username: "neiva", city: "Rue Louis-d'Affry, Fribourg"},
    {email: "stephane@email.com", password: "password", username: "misochan", city: "Rue de Genève, Lausanne"},
    {email: "felipe@email.com", password: "password", username: "felipe", city: "Quai du Cheval-Blanc, Carouge"}])

project1 = Project.new(name: "Landing page", description: "Simple landing page for your website", price: 150, duration: "3 days", user_id: User.all.sample.id, details: "
A landing page is a great way to attract your audience, drive traffic and convert this traffic into sales. I will design your Business, Real estate, Credit repair, Lawyer, Law farm, Doctor, Dentist, Gym, Photography, Blogging, Agency, and multi-purpose that suit with Landing page website.")
project1.photo.attach(io: File.open(Rails.root.join('app/assets/images/project1.jpg')), filename: 'project1.jpg', content_type: 'image/jpg')
project1.save

project2 = Project.new(name: "Airbnb clone", description: "Airbnb clone for your business", price: 1000, duration: "1 month", user_id: User.all.sample.id, details: "
Are you looking for an Airbnb welcome book template and cannot find one? Congratulations! You landed on the right page. The Airbnb welcome book template is suitable for all types of rental projects, including apartments, villas, bungalows, castles, condos, Cottages, Duplexes, Farmhouses, Lodges, Flats, Mansions and any other type of Luxury Houses.")
project2.photo.attach(io: File.open(Rails.root.join('app/assets/images/project2.jpg')), filename: 'project2.jpg', content_type: 'image/jpg')
project2.save

project3 = Project.new(name: "Online store", description: "Multi language online store to grow your business", price: 4500, duration: "3 months", user_id: User.all.sample.id, details: "
We provided a guarantee to develop the Best Selling Ecommerce Website using Wordpress Woocommerce. At Techhikers, we ensure the quality of Online Store using attractive layouts containing stunning designs, High-end payment Gateways, and SEO friendly Multi Vendor Ecommerce stores.
With over many years of experience in the Web development industry, Always striving for best and updated with the changing trends in Ecommerce World.")
project3.photo.attach(io: File.open(Rails.root.join('app/assets/images/project3.jpg')), filename: 'project3.jpg', content_type: 'image/jpg')
project3.save

project4 = Project.new(name: "Useful API", description: "I can create the API you need in just a few days", price: 600, duration: "5 days", user_id: User.all.sample.id, details: "
Hello! I hope you're doing well during these times of pandemic. I'm a computer science major student in one of the renowned universities in my country. I have 2+ years of experience with different programming languages and logic building. I believe in client satisfaction and top-quality work. My expertise is in python and I write python scripts which automate your tasks and make your life easier. I can write wide range of scripts including console based applications, scrapping using BS4/Selenium/Requests, simple GUI applications KIWI or QT, API Integration or even a small machine learning model deployed on flask or Django web app.")
project4.photo.attach(io: File.open(Rails.root.join('app/assets/images/project4.jpg')), filename: 'project4.jpg', content_type: 'image/jpg')
project4.save

project5 = Project.new(name: "Relational database", description: "I can create any relational database you need, from simple to complex", price: 400, duration: "1 week", user_id: User.all.sample.id, details: "
If you feel any difficulty and fix any professional Database assignment or task/error? If you need assistant for professional Database assignment, ERD, and database design and write queries for the Relation Database then you are at the correct place. I will provide you the best service in database programming, SQL Query, SQL Database Administration, SQL Server, PL/SQL, MYSQL programming, and every kind of database. ")
project5.photo.attach(io: File.open(Rails.root.join('app/assets/images/project5.jpg')), filename: 'project5.jpg', content_type: 'image/jpg')
project5.save

project6 = Project.new(name: "Android task manager app", description: "I can create any android task manager app", price: 500, duration: "2 weeks", user_id: User.all.sample.id, details: "
Hello, I have been working as a UI UX Designer and Product Designer for almost four years. I specialize in Mobile User Interface and User Experience UI/UX designs for both iOS and Android platforms. So far I have worked with many reputed companies and clients all around the world. I'm here to provide my service to make your product amazing.")
project6.photo.attach(io: File.open(Rails.root.join('app/assets/images/project6.jpg')), filename: 'project6.jpg', content_type: 'image/jpg')
project6.save

project7 = Project.new(name: "Website", description: "Developping a full website for your company", price: 2500, duration: "3 weeks", user_id: User.all.sample.id, details: "
Do you want a stunning website with functional, purposeful design that’s completely custom and created by a professional? Well, you've landed at the right place! I’ve been designing websites on Wix for over 7 years and am a Wix Certified Partner! I run my own business, Waymark Solutions, building and managing websites and providing marketing solutions. I've worked with industries all across the board and can design you a custom-tailored, beautiful website that can be easily managed and updated by you at the completion of the project. Feel free to message me for examples.")
project7.photo.attach(io: File.open(Rails.root.join('app/assets/images/project7.jpg')), filename: 'project7.jpg', content_type: 'image/jpg')
project7.save

project8 = Project.new(name: "E-commerce platform", description: "I can developp an e-comerce platform for your company", price: 1500, duration: "2 weeks", user_id: User.all.sample.id, details: "
Are you planning to have your eCommerce store for your business? I will provide you an amazing store Which will attract your customer from any part of the world. Hi, my name is Ahmad Raza and I am a professional WordPress theme and plugin developer, I am an expert in woocommerce and E-Commerce website Development.")
project8.photo.attach(io: File.open(Rails.root.join('app/assets/images/project8.jpg')), filename: 'project8.jpg', content_type: 'image/jpg')
project8.save

project9 = Project.new(name: "Logo design", description: "You want a creative and impacting logo for your company?", price: 200, duration: "2 days", user_id: User.all.sample.id, details: "
Greetings!! Welcome to Budding Solutions. Your one-stop-shop for all your graphic needs. If you are looking for a Modern and Professional Business logo design, then you are at the right place. We focus on creating simple yet effective designs that elevate your business outlook and leave an everlasting impression. We stand out from our competition due to our best-in-class Customer Support and Quality Designs.")
project9.photo.attach(io: File.open(Rails.root.join('app/assets/images/project9.jpg')), filename: 'project9.jpg', content_type: 'image/jpg')
project9.save

project10 = Project.new(name: "Navbar design", description: "I can design a great navbar for your website", price: 100, duration: "1 days", user_id: User.all.sample.id, details: "
Hello sir! If you are looking for someone to create responsive, well-aligned, attractive-looking navbars, then I would love to help you! I am an expert in creating responsive websites from Figma design and have worked on many different projects by taking a design from Figma templates. I have great knowledge about all concepts of HTML, CSS and React. I can ensure that I will easily create an appealing, responsive navbar as per your satisfaction.")
project10.photo.attach(io: File.open(Rails.root.join('app/assets/images/project10.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project10.save
