class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :year
      t.integer :team_id
      t.timestamps
    end
  end
end
