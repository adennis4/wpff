class Team < ActiveRecord::Base
  has_many :years
  has_many :weeks, through: :years
end
