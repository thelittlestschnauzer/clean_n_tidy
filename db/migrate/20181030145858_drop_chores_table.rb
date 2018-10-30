class DropChoresTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :chores
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end 
end
