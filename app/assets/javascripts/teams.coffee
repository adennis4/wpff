class App.Views.Index extends Backbone.View
  template: 'teams'

  initialize: (options)->
    @data = options.data

  viewContext: ->
    teams: @data

  template: =>
    Handlebars.compile($('#teams_tmpl').html()) @viewContext()

  render: ->
    @$el.append @template
    @$el
