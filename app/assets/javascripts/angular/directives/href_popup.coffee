#= require '../app_init'

app = angular.module 'app'

app.directive 'popup', ->
  link: (scope, elem, attrs) ->
    elem.on 'click', (e) ->
      window.open attrs.href
      e.preventDefault()
      e.stopPropagation()