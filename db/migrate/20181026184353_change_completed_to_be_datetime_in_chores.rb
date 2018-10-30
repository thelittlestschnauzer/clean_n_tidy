class ChangeCompletedToBeDatetimeInChores < ActiveRecord::Migration[5.2]
  def change
    change_column :chores, :completed, :datetime
  end
end
