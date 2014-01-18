window.Teams = {}

Teams.init = (options)->
  teamsView = new TeamsView
    data: options
    el: $('body')
  teamsView.render()

class TeamsView extends Backbone.View
  initialize: (options)->
    @data = options.data
    teamRow = new TeamRowView options.data.teams[0]
    teamRow.render()

  viewContext: ->
    teams: @data.teams
    years: @data.years

  template: ->
    Handlebars.compile($("#teams_tmpl").html()) @viewContext()

  render: ->
    @$el.append @template()
    @$el
