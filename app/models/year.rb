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

  # def total_sidebets_rank
  #   total_sidebets.sort
  # end

  # def calculate_sidebet_totals
  #   total = weeks.map do |week|
  #     week.points.to_d
  #   end.sum
  #   self.update_attributes(overall_points: total)
  # end
end
