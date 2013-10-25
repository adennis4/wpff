class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :owner, null: false
      t.integer :wins
      t.integer :losses
      t.timestamps
    end
  end
end
