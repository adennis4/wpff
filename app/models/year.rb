class Year < ActiveRecord::Base
  has_many :weeks
  belongs_to :team
end
