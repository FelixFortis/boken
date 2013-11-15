class ChangeGoalIdToGgId < ActiveRecord::Migration
  def up
    rename_column :user_goals, :goal_id, :global_goal_id
  end

  def down
    rename_column :user_goals, :global_goal_id, :goal_id
  end
end
