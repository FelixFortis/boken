class CreateGlobalGoals < ActiveRecord::Migration
  def up
    create_table :global_goals, :force => true do |t|
      t.string :title
      t.text :description

      t.integer :user_id

      t.timestamps
    end

    drop_table :goals
  end
  def down
    create_table "goals", :force => true do |t|
      t.string  "name"
      t.text    "description"
      t.boolean "complete", :default => false
    end

    drop_table :global_goals
  end
end
