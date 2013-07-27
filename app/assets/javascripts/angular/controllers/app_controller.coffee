#= require '../app_init'

app = angular.module 'app'

app.controller 'AppController', ($scope, $location, $rootScope, ProjectsCache) ->
  $scope.initialized = false
  $scope.showProjects = false
  $scope.projects = ProjectsCache.getProjects()

  $scope.toggleProjects = ->
    $scope.initialized = true
    $scope.showProjects = !$scope.showProjects

  $scope.hideProjects = ->
    $scope.showProjects = false    

  $rootScope.$on '$routeChangeSuccess', ->
    $scope.hideProjects()