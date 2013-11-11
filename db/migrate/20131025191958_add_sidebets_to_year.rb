class AddSidebetsToYear < ActiveRecord::Migration
  def change
    add_column :years, :overall_sidebets, :integer
  end
end
