module TeamsHelper

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
