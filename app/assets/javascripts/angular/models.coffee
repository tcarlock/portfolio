#= require './app_init'

app = angular.module 'app'

app.factory 'Project', ($resource) ->
  $resource '/api/projects/:id', { id: '@id' }, {}