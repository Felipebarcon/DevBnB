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

project11 = Project.new(name: "Figma Design", description: "I will design creative prototype wire in figma", price: 350, duration: "4 days", user_id: User.all.sample.id, details: "
Hi, Welcome to my page. I have a Bachelors's degree in Interaction Design and am an award-winning designer working in the UI UX design area for the last 4+ years. Despite all the unbelievable growth, what has stayed me consistent through such an extremely long time, is my commitment to customer satisfaction.")
project11.photo.attach(io: File.open(Rails.root.join('app/assets/images/project11.jpg')), filename: 'project11.jpg', content_type: 'image/jpg')
project11.save

project12 = Project.new(name: "App performance testing", description: "I will test performance, load and stress of your web application", price: 400, duration: "2 days", user_id: User.all.sample.id, details: "Performance testing is a testing measure that evaluates the speed, responsiveness and stability of a computer, network, software program or device under a workload. In today's time application success is about to handle massive users load and how application perform in that specific user load. I will run performance tests in order to identify performance-related bottlenecks. The goal of Load Testing is to improve performance bottlenecks and to ensure stability and smooth functioning of software application before deployment. Stress testing a type of software testing that verifies stability & reliability of software application. The goal of Stress testing is measuring software on its robustness and error handling capabilities under extremely heavy load conditions and ensuring that software doesn't crash under crunch situations.")
project12.photo.attach(io: File.open(Rails.root.join('app/assets/images/project12.jpg')), filename: 'project12.jpg', content_type: 'image/jpg')
project12.save

project13 = Project.new(name: "Web calculator", description: "I will make online web calculator or convert excel into web", price: 1300, duration: "5 days", user_id: User.all.sample.id, details: "
Hi, If you are looking for a Web Developer who can create a Web Calculator for your website then you never need to go anywhere, you'll get that right here. I can make Any Type of Web Calculator (Custom or Pre-defined) for any industry. The calculator will be Compatible With Your Website, which will be Cross-Browser Compatible, and also be Responsive. The calculations will be Very Accurate same as on your logic file. I only need a well-described calculation logic file (Excel Sheet or any other) to convert it, into an Online Web Calculator.")
project13.photo.attach(io: File.open(Rails.root.join('app/assets/images/project13.jpg')), filename: 'project13.jpg', content_type: 'image/jpg')
project13.save

project14 = Project.new(name: "App development", description: "I will develop a web app for you", price: 1600, duration: "1 week", user_id: User.all.sample.id, details: "
I will develop a stunning responsive web app from scratch for you. If you have a legacy web application or an exciting idea and you want a modern, responsive, scalable web application that is easily accessible from the web, then this gig is perfect for you!")
project14.photo.attach(io: File.open(Rails.root.join('app/assets/images/project14.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project14.save

project15 = Project.new(name: "Web component", description: "I will develop your lightning web components for salesforce", price: 500, duration: "2 days", user_id: User.all.sample.id, details: "
Hi! I am Erick Sixto, a Salesforce and Frontend Developer. I am a certified Salesforce Platform Developer and Administrator. I specialize in building lightning web components for clients using my Web Development and Frontend Experience. Basic: Components that uses the SLDS styling and have very basic logic. Examples could be: A card that shows information about a record, a Form to Update a record. No Apex Classes

Standard: Components that require a certain amount of logic or that needs custom styling. Basic Apex Classes Included

Premium: A set of components that each one needs custom styling and complex logic to be executed. Complex Apex Classes Included. Reach out via message to send your requirements.")
project15.photo.attach(io: File.open(Rails.root.join('app/assets/images/project15.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project15.save

project16 = Project.new(name: "Dashboard Design", description: "I will do dashboard design, web app, and saas uiux design", price: 300, duration: "1 days", user_id: User.all.sample.id, details: "
Are you looking for someone who can do dashboard design, web app, saas, or admin panel uiux design for you?
Then you are in right place. I have 2+ years of experience in this industry. My target is not only to design colorful UI but also to ensure a user friendly and functional dashboard, web app, or any saas product that will help you to generate more revenue. Check out my previous work from Portfolio: https://flic.kr/ps/3VpLno")
project16.photo.attach(io: File.open(Rails.root.join('app/assets/images/project16.jpg')), filename: 'project16.jpg', content_type: 'image/jpg')
project16.save

project17 = Project.new(name: "Laravel Web Developper", description: "I will be your laravel web developer", price: 2000, duration: "1 week", user_id: User.all.sample.id, details: "
Hi there! Please Note! Contact us before placing the order to discuss your requirements. I am a professional php laravel web developers with the experties In Front End as well as Backend Development. I have strong skills in HTML, HTML5, CSS3, Bootstrap, JAVASCRIPT, Laravel, & PHP. We are offering php website, php laravel wevbsite, php mysql, web developer, php script.")
project17.photo.attach(io: File.open(Rails.root.join('app/assets/images/project17.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project17.save

project18 = Project.new(name: "Data Mining", description: "I will google maps web scraper with business data", price: 700, duration: "6 days", user_id: User.all.sample.id, details: "
I Will Provide Any country Data as per Your Requirement. I am a professional google Maps web scraping having 5 years of experience in Internet Search, Google map Web Scraper, Business data, Web scraper, Web search. Here I will generate and provide leads or data from google maps using Google Map data scraping according to your category and location for growing your business.")
project18.photo.attach(io: File.open(Rails.root.join('app/assets/images/project18.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project18.save

project19 = Project.new(name: "Django Back-end", description: "I will develop your web backend using django and bootstrap", price: 1100, duration: "2 weeks", user_id: User.all.sample.id, details: "
I will develop your web backend using and bootstrap. I will develop optimized APIs for your website. I am really good at third-party APIs integrations including Twilio, FedEx, google maps, Twitter, Dropbox, stripe. I can handle any type of Django website development including portfolio, business, fitness, NFT and marketplace, etc.")
project19.photo.attach(io: File.open(Rails.root.join('app/assets/images/project19.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project19.save

project20 = Project.new(name: "Interactive map", description: "I will create an interactive data visualization web map", price: 1000, duration: "6 days", user_id: User.all.sample.id, details: "
I will create a custom interactive web map using JavaScript packages such as Leaflet, D3.js, and Mapbox GL JS. Depending on your data and preference, I can create a choropleth (colored polygons), point, line, flow, and/or heatmap. I will customize the colors, fonts, and symbols to suit your project. You will be able to pan and zoom to explore the mapped area. According to the project, I can add tool-tips/pop-ups with data and the colors and/or opacity of the features can change on mouse-over or click. In the Standard and Premium packages, I can make multiple layers for your data that can be turned on/off for different visualizations.")
project20.photo.attach(io: File.open(Rails.root.join('app/assets/images/project20.jpg')), filename: 'project10.jpg', content_type: 'image/jpg')
project20.save
