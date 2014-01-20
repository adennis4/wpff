module TeamsHelper

  def teams_init_json
    teams.map do |team|
      {
        name: team.name,
        year: year(team),
        week: week(team)
      }
    end.to_json
  end

  def to_currency(num)
    if num < 0
      "($#{num * -1})"
    else
      "$#{num}"
    end
  end

  def indicator(ranking, threshold)
    ranking > threshold ? "negative" : ""
  end

  private

  def week(team)
    team.weeks
  end

  def year(team)
    team.years
  end
end
