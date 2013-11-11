class AddPayoutToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :payout, :integer
  end
end
