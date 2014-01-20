window.Teams = {}

Teams.init = (options)->
  teamsView = new TeamsView
    data: options
    el: $('body')
  teamsView.render()

class TeamsView extends Backbone.View
  initialize: (options)->
    @data = options.data

  viewContext: ->
    teams: @data

  template: ->
    Handlebars.compile($("#teams_tmpl").html()) @viewContext()

  render: ->
    @$el.append @template()
    @$el
