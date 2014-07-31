Handlebars.registerHelper 'visualPayout', (payout)->
  if payout > 0
    new Handlebars.SafeString( "<td>" + payout + "</td>")
  else
    new Handlebars.SafeString( "<td class=negative>($" + payout * -1 + ")</td>")

Handlebars.registerHelper 'visualTotalPayout', (payout)->
  if payout > 0
    new Handlebars.SafeString( "<td class=center>" + payout + "</td>")
  else
    new Handlebars.SafeString( "<td class=center-negative>($" + payout * -1 + ")</td>")
