$(document).ready ->
  $('#toggle_tab').click((e) ->
    $('#project_list article').slideToggle(300)
  )

  if $('#image_gallery img').length > 0
    Galleria.loadTheme('/assets/themes/classic/galleria.classic.min.js')
    Galleria.configure({
      lightbox: true
    });
    Galleria.run('#image_gallery')