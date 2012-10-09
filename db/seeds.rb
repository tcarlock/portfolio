project = FactoryGirl.create(:project,
  title: "Sleeve A Message",
  details: "
      This project gives a coffee-sleeve supplier the ability to manage and automatically generate new 
      sleeve orders, as well as provide a real-time ad exchange for ad space on sleeves. This project 
      consists of two components: (1) a Rails web app for managing cafe profiles, generating and monitoring 
      orders, managing marketing assets, and making ad buys and; (2) a Sinatra-based API for auto-generating 
      sleeve orders and serving ad content to on-site thermal printers." , 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, Sinatra, jQuery, CoffeeScript, JavaScript, Sphinx, Twitter Bootstrap, Heroku, Devise, Paperclip, CanCan, PostgreSQL",
  skill_list: "Web Application Development, Interface Design, API Design, PaaS"
)

project.images << FactoryGirl.create(:image, file_path: "sam/orders.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "sam/profile.png", sort_order: project.images.count + 1)

project = FactoryGirl.create(:project,
  title: "Nexly",
  details: "This project gives a coffee-sleeve supplier the ability to manage and automatically generate new 
      sleeve orders, as well as provide a real-time ad exchange for ad space on sleeves. This project 
      consists of two components: (1) a Rails web app for managing cafe profiles, generating and monitoring 
      orders, managing marketing assets, and making ad buys and; (2) a Sinatra-based API for auto-generating 
      sleeve orders and serving ad content to on-site thermal printers.", 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, Sinatra, jQuery, offeeScript, JavaScript, Sphinx, Twitter Bootstrap, Heroku, Devise, Paperclip, CanCan, PostgreSQL",
  skill_list: "Web Application Development, Interface Design, API Design, PaaS"
)

project.images << FactoryGirl.create(:image, file_path: "nexly/site_home.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "nexly/profile.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "nexly/analytics_home.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "nexly/manage_reviews.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "nexly/manage_sites.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "nexly/integration.png", sort_order: project.images.count + 1)
project.images << FactoryGirl.create(:image, file_path: "nexly/toolbar_customize.png", sort_order: project.images.count + 1)

project = FactoryGirl.create(:project,
  title: "timcarlock.me",
  details: "I needed to quickly build and deploy a new portfolio website which would display a list of development 
      projects, as well as screen shots and information about each project. More important, the site needed 
      to be deployed and live in under 24 hours from completion of development.

      The site was developed using Rails 3.2.8, PostgreSQL and a variety of front-end technologies including 
      Sass, Haml, jQuery .", 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, jQuery, CoffeeScript, Twitter Bootstrap, Heroku, PostgreSQL",
  skill_list: "Web Application Development, Interface Design, API Design, PaaS"
)