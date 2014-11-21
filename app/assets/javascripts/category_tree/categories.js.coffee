jQuery ->
  $('#parent_name').autocomplete({
    minLength: 3,
    source: (request, response) ->
      datasource = $('#parent_name').data('autocomplete-source')
      datasource += '?term=' + request.term
      $.getJSON(datasource, (data) ->
        response($.map(data, (category, key) ->
          return {
            id: category.id,
            label: category.breadcrumbs,
            value: category.name
          }
        ))
      )
    ,
    select: (event, ui) ->
      $('#category_parent_id').val(ui.item.id)
      $('#parent_name').val(ui.item.value)
      $('.ui-helper-hidden-accessible').empty()
      return false
  });