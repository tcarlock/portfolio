app = angular.module 'app', ['ngResource']

app.config ($httpProvider, $locationProvider) ->
  Galleria.loadTheme('/galleria/themes/classic/galleria.classic.min.js') unless Galleria.themes
  Galleria.configure({
    lightbox: true
  });
  # Galleria.run('#image_gallery')
  
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

app.run ()->