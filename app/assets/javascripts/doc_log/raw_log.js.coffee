jQuery ->
  $('.hasclear').keyup ->
    t = $(this)
    t.next('span').toggle Boolean(t.val())
    return
  $('.clearer').hide $(this).prev('input').val()
  $('.clearer').click ->
    $(this).prev('input').val('').focus()
    $(this).hide()
    $(this).parents('form:first').submit()
    return
  $('.hasclear').next('span').toggle Boolean($('.hasclear').val())
  $('.hasclear').focus()
