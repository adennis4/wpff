class ChangePointsOnWeeks < ActiveRecord::Migration
  def up
    change_column :weeks, :points, :decimal, precision: 5, scale: 1
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
