class AddPointsToYear < ActiveRecord::Migration
  def change
    add_column :years, :overall_points, :decimal
  end
end
