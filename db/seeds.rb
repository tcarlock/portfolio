project = Project.create(
  title: "Sleeve A Message",
  details: "I'm currently building a web-based application that gives a allows a coffee-sleeve supplier the ability to (1) automatically generate and manage sleeve orders; (2) sell ad space on these sleeves; and (3) print ads on sleeves real time at cafes. This project consists of two components: (1) a Rails web app for managing cafe profiles, generating and monitoring orders, managing marketing assets, and setting up ad buys; and (2) a Sinatra-based API for auto-generating sleeve orders and serving ad content to on-site thermal printers.

    The tool is being built with Ruby on Rails and Sinatra running on PostgreSQL with jQuery, Sass and CoffeeScript on the front end." , 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, Sinatra, jQuery, CoffeeScript, JavaScript, Sphinx, Twitter Bootstrap, Heroku, Devise, Paperclip, Heroku Accounts, CanCan, PostgreSQL",
  skill_list: "Web Application Development, Interface Design, API Design, PaaS, Performance Optimization"
)

attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A business' main profile", details: "")
attachment.file = File.open('app/assets/images/screen_caps/sam/profile.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A business' list of locations and active orders", details: "")
attachment.file = File.open('app/assets/images/screen_caps/sam/orders.png')
project.attachments << attachment

project = Project.create(
  title: "Nexly",
  details: "This application was developed to provide small and mid-sized businesses with a toolset for collecting and managing client reviews in order to drive web traffic and leads.  Specifically, the tool allowed businesses to request, collect and manage client reviews and push reviews to social media and their own website.  We also offered tools and analytics to monitor traffic back to the business' site and help the business capture new leads. Lastly, I developed a JavaScript toolbar that could be added to a business' website which would display client feedback and allow visitors to recommend/review the business. This toolbar was built using an approach open sourced by Meebo.  

    The tool was first developed using ASP.Net MVC and later migrated to Ruby on Rails running on MySQL. I also used jQuery and Sass on the front end.", 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, Sinatra, jQuery, CoffeeScript, JavaScript, Sphinx, Twitter Bootstrap, Heroku, Devise, Paperclip, CanCan, PostgreSQL",
  skill_list: "Web Application Development, Interface Design, API Design, PaaS"
)

attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "The main site page", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/site_home.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A business' profile page", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/profile.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "The main analytics page", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/analytics_home.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A list of reviews by status", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/manage_reviews.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A list of sites available for syndication", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/manage_sites.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "Code and instructions for adding the Nexly toolbar to an external site", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/integration.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "Toolbar customization options", details: "")
attachment.file = File.open('app/assets/images/screen_caps/nexly/toolbar_customize.png')
project.attachments << attachment

project = Project.create(
  title: "TopicFlock",
  details: "I started this project as a means of addressing a personal challenge associated with managing reference materials, while also learning several new technoloigies and techniques such as natural language processing and collective intelligence.  Specifically, TopicFlock was developed as a site for sharing links and resources to help people learn about new topics. The site was developed with features like link bookmarking and sharing, group management, and RSS monitoring/consumption.

    The tool was built with Ruby on Rails running on PostgreSQL with jQuery, Sass and CoffeeScript on the front end.", 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, jQuery, CoffeeScript, Twitter Bootstrap, Heroku, PostgreSQL, Alchemy API",
  skill_list: "Web Application Development, Interface Design, Natural Language Processing, Collective Intelligence"
)

attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "Main feed", details: "")
attachment.file = File.open('app/assets/images/screen_caps/topic_flock/feed.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "Add post a new link", details: "")
attachment.file = File.open('app/assets/images/screen_caps/topic_flock/add_link.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "Add a new RSS feed", details: "")
attachment.file = File.open('app/assets/images/screen_caps/topic_flock/add_feed.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A topic-specific page", details: "")
attachment.file = File.open('app/assets/images/screen_caps/topic_flock/page.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A list of all pages a user is subscribed to", details: "")
attachment.file = File.open('app/assets/images/screen_caps/topic_flock/pages.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A user's profile page", details: "")
attachment.file = File.open('app/assets/images/screen_caps/topic_flock/profile.png')
project.attachments << attachment

project = Project.create(
  title: "timcarlock.com",
  details: "I needed to quickly build and deploy a new portfolio website which would showcase my software/website development projects.  I wanted the site to have screen shots and information about each project including the tools and skills involved. More important, the site needed to be developed and deployed within a very short period of time (roughly 48 hours).

    The site was developed using Rails 3.2.8, PostgreSQL and a variety of front-end technologies including Sass, Haml, jQuery and CoffeeScript.", 
  primary_url: "",
  tech_list: "Ruby on Rails, Sass, Haml, CSS3, jQuery, CoffeeScript, Twitter Bootstrap, Heroku, PostgreSQL, Faker",
  skill_list: "Web Application Development, Interface Design"
)

attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "The welcome page", details: "")
attachment.file = File.open('app/assets/images/screen_caps/portfolio/splash.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A list of projects in the portfolio", details: "")
attachment.file = File.open('app/assets/images/screen_caps/portfolio/project_bar.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "The project-details page including a screenshot gallery", details: "")
attachment.file = File.open('app/assets/images/screen_caps/portfolio/project_view.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "A full-size image", details: "")
attachment.file = File.open('app/assets/images/screen_caps/portfolio/full_img.png')
project.attachments << attachment
attachment = Attachment.new(sort_order: project.attachments.count + 1, title: "", details: "")
attachment.file = File.open('app/assets/images/screen_caps/portfolio/full_img.png')
project.attachments << attachment