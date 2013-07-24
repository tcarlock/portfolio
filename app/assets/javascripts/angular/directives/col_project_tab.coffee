#= require '../app_init'

app = angular.module 'app'

app.directive 'colProjectTab', (currentUser) ->
  templateUrl: '/templates/projects/display_tab.html'
  scope:
    project: '=colProjectTab'