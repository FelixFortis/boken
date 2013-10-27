class CreateUserGoals < ActiveRecord::Migration
  def change
    create_table :user_goals do |t|
      t.integer :user_id
      t.integer :goal_id
      t.text :notes
      t.date :deadline
      t.integer :percent_complete
      t.boolean :complete

      t.timestamps
    end
  end
end
