module TeamsHelper

  def rankings(team, week)
    ranking = team.years.first.weeks[week].ranking
    dollar_conversion[ranking]
  end

  def dollar_conversion
    {
      1 => "$55",
      2 => "$45",
      3 => "$35",
      4 => "$25",
      5 => "$15",
      6 => "$5",
      7 => "($5)",
      8 => "($15)",
      9 => "($25)",
      10 => "($35)",
      11 => "($45)",
      12 => "($55)"
    }
  end
end
