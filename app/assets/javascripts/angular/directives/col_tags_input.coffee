#= require '../app_init'

app = angular.module 'app'

app.directive 'colTagsInput', ($http, $q) ->
  templateUrl: '/templates/shared/tags_editor.html'
  scope:
    tagsString: '=colTagsInput'
  link: (scope, elem, attrs) ->    
    scope.$watch 'tagsString', (value) ->
      if value?
        scope.tags = scope.tagsString.split(',')

    scope.newTag = ''

    elem.find('input').keydown (e) ->
      if e.keyCode is 13 or e.keyCode is 9
        unless scope.newTag in scope.tags
          scope.addTag() if scope.newTag.length > 0
          scope.$apply()
        
        e.preventDefault()

    scope.addTag = ->
      scope.tags.push scope.newTag
      scope.tagsString = scope.tags.join(', ')
      scope.newTag = ''