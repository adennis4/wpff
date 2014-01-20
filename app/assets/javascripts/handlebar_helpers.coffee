Handlebars.registerHelper 'visualPayout', (ranking, payout)->
  indicator = if ranking > 6 then "negative" else ""
  dollars = if payout > 0 then payout else "($" + (payout * -1) + ")"
  new Handlebars.SafeString(
    "<td class=" + indicator + ">" + dollars + "</td>"
  )

Handlebars.registerHelper 'visualTotalPayout', (ranking, payout)->
  indicator = if ranking > 6 then "center-negative" else "center"
  dollars = if payout > 0 then payout else "($" + (payout * -1) + ")"
  new Handlebars.SafeString(
    "<td class=" + indicator + ">" + dollars + "</td>"
  )
