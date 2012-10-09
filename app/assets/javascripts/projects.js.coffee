$(document).ready ->
  $('#toggle_tab').click((e) ->
    $('#project_list').slideToggle(300)
  )