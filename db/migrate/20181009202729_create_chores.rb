class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores do |t|
      t.string :name
      t.date :date_assigned
      t.string :assigned_to
      t.boolean :completed, default: true
      t.integer :room_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
