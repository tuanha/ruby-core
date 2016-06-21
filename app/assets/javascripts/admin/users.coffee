$('.user_role').on 'change', ->
  id = $(this).attr('data-id')
  role = $(this).val()
  $('#loading').show()
  $.ajax
    url: '/admin/users/assign_role'
    type: 'POST'
    data: 'id=' + id + '&role=' + role
    dataType: 'json'
    success: (data) ->
      $('#loading').hide()
      return
  return
