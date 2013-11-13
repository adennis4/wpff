module TeamsHelper

  def dollar_conversion
    {
      55 => "$55",
      45 => "$45",
      35 => "$35",
      25 => "$25",
      15 => "$15",
      5 => "$5",
      0 => "$0",
      -5 => "($5)",
      -15 => "($15)",
      -25 => "($25)",
      -35 => "($35)",
      -45 => "($45)",
      -55 => "($55)"
    }
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
end
