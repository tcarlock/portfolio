#= require ./app_init

app = angular.module 'app'

app.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true # Use HTML5 history instead of hashes

  $routeProvider.when '/', controller: 'AppController', templateUrl: '/templates/index.html'
  $routeProvider.when '/projects', controller: 'ProjectsController', templateUrl: '/templates/project_list.html'