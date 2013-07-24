#= require '../app_init'

app = angular.module 'app'

app.directive 'colTagCloud', ->
  templateUrl: '/templates/shared/tag_cloud.html'
  replace: true
  scope:
    header: '@colCloudHeader'
    redirUrl: '=colRedirectUrl'
    tags: '=colTagCloud'

  link: ($scope, elems, attrs) ->
    $scope.limit = 10

    $scope.$watch('tags', =>
      return unless $scope.tags?
      $scope.allowToggle = $scope.tags.length > $scope.limit
      $scope.displayAll = !$scope.allowToggle
    )

  controller: ($scope) ->
    $scope.toggleTags = ->
      $scope.displayAll = !$scope.displayAll