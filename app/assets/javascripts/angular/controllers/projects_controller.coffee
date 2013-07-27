#= require '../app_init'

app = angular.module 'app'

app.controller 'ProjectsController', ($scope, $route, $timeout, $routeParams, ProjectsCache) ->
  $scope.init = () ->
    switch $scope.action
      when 'Show'
        $scope.projectId = $routeParams.projectId
        $scope.project = ProjectsCache.getProject($scope.projectId)
        $timeout ->
          Galleria.configure(
            lightbox: true
          ).run($('#image_gallery'))
        , 100


  $scope.action = $route.current.$$route.action
  $scope.init()
