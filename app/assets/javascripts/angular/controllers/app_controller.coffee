#= require '../app_init'

app = angular.module 'app'

app.controller 'AppController', ($scope, $location, Project) ->
  $scope.projects = Project.query {}
  
  $scope.toggleProjects = ->
    $scope.showProjects = !$scope.showProjects