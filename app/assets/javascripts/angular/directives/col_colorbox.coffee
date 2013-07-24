#= require '../app_init'

app = angular.module 'app'

app.directive 'colColorbox', ->
  link: (scope, elem, attrs) ->
    scope.$watch attrs.colColorbox, (value) ->
      elem.colorbox(
        scalePhotos: true
        maxWidth:960
      )