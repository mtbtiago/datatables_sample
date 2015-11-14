# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  table = $('#users-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#users-table').data('source')
    paging: true
    pagingType: 'full_numbers'
    colReorder: true
    language:
      decimal:        ','
      emptyTable:     "No s'han trobat registres"
      info:           'Mostrant _START_ a _END_ de _TOTAL_ registres'
      infoEmpty:      'Mostrant 0 a 0 de 0 registres'
      infoFiltered:   "(Filtrat d'un total de _MAX_ registres)"
      infoPostFix:    ''
      thousands:      '.'
      lengthMenu:     'Mostrant _MENU_ registres'
      loadingRecords: 'Carregant ...'
      processing:     'Processant ...'
      search:         'Filtrar:'
      zeroRecords:    "No s'han trobat registres"
      paginate:
        first: 'Primer'
        last: 'Últim'
        next: 'Següent'
        previous: 'Anterior'
    # Check dataTables documentation to learn more about
    # available options.
