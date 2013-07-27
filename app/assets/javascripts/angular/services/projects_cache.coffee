#= require '../app_init'

app = angular.module 'app'

app.provider 'ProjectsCache', () ->
  @$get = ($q, Project) ->
    projects = Project.query {}

    getProjects: ->
      projects

    getProject: (id) ->
      (project for project in projects when project.id is parseInt(id, 10))[0]