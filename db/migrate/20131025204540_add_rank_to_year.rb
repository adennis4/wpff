class AddRankToYear < ActiveRecord::Migration
  def change
    add_column :years, :points_rank, :integer
    add_column :years, :sidebet_rank, :integer
  end
end
