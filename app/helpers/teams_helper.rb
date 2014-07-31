module TeamsHelper

  def teams_init_json
    teams.map do |team|
      {
        name: team.name,
        year: team.years,
        week: team.weeks
      }
    end.to_json
  end
end
