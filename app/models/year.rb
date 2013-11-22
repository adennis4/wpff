class Year < ActiveRecord::Base
  has_many :weeks
  belongs_to :team

  def update_total_points
    self.update_attributes(overall_points: total_points)
  end

  def total_points
    weeks.map { |week| week.points.to_d }.sum
  end

  def update_total_sidebets
    self.update_attributes(overall_sidebets: total_sidebets)
  end

  def total_sidebets
    weeks.map { |week| week.payout }.sum
  end

  def total_sidebets_rank(year)
    years = Year.where year: year
    order = years.sort { |a,b| a.overall_sidebets <=> b.overall_sidebets }
    rank = (1..12).to_a.reverse
    order.each do |position|
      position.update_attributes(sidebet_rank: rank.shift)
    end
  end

  def total_points_rank(year)
    years = Year.where year: year
    order = years.sort { |a,b| a.overall_points <=> b.overall_points }
    rank = (1..12).to_a.reverse
    order.each do |position|
      position.update_attributes(points_rank: rank.shift)
    end

  end
end
