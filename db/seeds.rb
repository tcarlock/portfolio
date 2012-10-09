project = FactoryGirl.create(:project,
  title: "Sleeve A Message",
  details: 
    <<-EOS 
      This project gives a coffee-sleeve supplier the ability to manage and automatically generate new 
      sleeve orders, as well as provide a real-time ad exchange for ad space on sleeves. This project 
      consists of two components: (1) a Rails web app for managing cafe profiles, generating and monitoring 
      orders, managing marketing assets, and making ad buys and; (2) a Sinatra-based API for auto-generating 
      sleeve orders and serving ad content to on-site thermal printers.
    EOS
  ,
  primary_url: "",
  tech_string: "Ruby on Rails, Sass, Haml, CSS3, Sinatra, ",
  skills_string: "Web application development, interface design, API architecture"
)

project.images << FactoryGirl.create(:project, url: "", order: project.images + 1)
project.images << FactoryGirl.create(:project, url: "", order: project.images + 1)
project.images << FactoryGirl.create(:project, url: "", order: project.images + 1)

project = FactoryGirl.create(:project,
  title: "",
  details: "",
  primary_url: "",
  tech_string: [],
  skills_string: []
)