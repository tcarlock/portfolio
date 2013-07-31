# class ProjectBuilder
#   @projects = []

#   def self.run
#     ProjectBuilder.build do
#       ProjectBuilder.add_project
#         title: "Sleeve A Message",
#         details: "I'm currently building a web-based application that gives a allows a coffee-sleeve supplier the ability to (1) automatically generate and manage sleeve orders; (2) sell ad space on these sleeves; and (3) print ads on sleeves real time at cafes. This project consists of two components: (1) a Rails web app for managing cafe profiles, generating and monitoring orders, managing marketing assets, and setting up ad buys; and (2) a Sinatra-based API for auto-generating sleeve orders and serving ad content to on-site thermal printers. \nThe tool is being built with Ruby on Rails and Sinatra running on PostgreSQL with jQuery, Sass and CoffeeScript on the front end.", 
#         primary_url: '',
#         tech_list: "Ruby on Rails, Sass, Haml, CSS3, Sinatra, jQuery, CoffeeScript, JavaScript, Sphinx, Twitter Bootstrap, Heroku, Devise, Paperclip, Heroku Accounts, CanCan, PostgreSQL",
#         skill_list: "Web Application Development, Interface Design, API Design, PaaS, Performance Optimization",
#         attachments: [{
#           title: "A business' main profile",
#           file_path: 'app/assets/images/screen_caps/sam/profile.png'
#         }, {
#           title: "A business' list of locations and active orders",
#           file_path: 'app/assets/images/screen_caps/sam/orders.png'
#         }]
#     end
#   end

#   def self.build(&block)
#     instance_eval &block
#   end

#   def self.add_project project
#     @projects << project
#     @projects
#   end

#   def self.attachments

#   end
# end