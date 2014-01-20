class ChangePointsOnYears < ActiveRecord::Migration
  def up
    change_column :years, :overall_points, :decimal, precision: 5, scale: 1
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
