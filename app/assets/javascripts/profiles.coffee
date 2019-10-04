$ ->
  $(".auto_submit input").change ->
    @form.submit()

  $('#flash').delay(4500).fadeOut('slow')
