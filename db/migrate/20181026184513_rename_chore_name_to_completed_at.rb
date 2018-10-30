class RenameChoreNameToCompletedAt < ActiveRecord::Migration[5.2]
  def change
    rename_column :chores, :completed, :completed_at 
  end
end
