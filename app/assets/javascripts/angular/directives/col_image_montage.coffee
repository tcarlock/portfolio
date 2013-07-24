#= require '../app_init'

app = angular.module 'app'

app.directive 'colImageMontage', ($timeout, $window) ->
  link: (scope, elem, attrs) ->
    scope.$watch attrs.colImageMontage, (value) ->
      if value? and value.length
        $timeout( ->
          elem.montage(
            liquid: false
            fillLastRow : false
            margin: 0
            alternateHeight : false
            alternateHeightRange:
              min: 150
              max: 400
          )

          elem.find('a').colorbox(
            scalePhotos: true
            maxWidth:960
          )
        , 100)