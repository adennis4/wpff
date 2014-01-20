class Week < ActiveRecord::Base
  belongs_to :year
  has_one :teams, through: :year

  def self.create_week(year="2013", week, points, payouts, ranks)
    years = Year.where year: year
    years.sort! { |a,b| a.team_id <=> b.team_id }
    years.each do |year|
      Week.create(
        week: week,
        year_id: year.id,
        points: points.shift,
        payout: payouts.shift,
        ranking: ranks.shift
      )
    end
  end
end
