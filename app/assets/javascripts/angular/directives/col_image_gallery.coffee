#= require '../app_init'

app = angular.module 'app'

app.directive 'colImageGallery', ($timeout) ->
  link: (scope, elem, attrs) ->
    scope.$watch attrs.colImageGallery, (value) ->
      if value? and value.length
        $timeout( ->
          Galleria.configure(
            lightbox: true
            height:700
          ).run(elem)
        , 1)