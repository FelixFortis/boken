class ChangeUserIdToProfileIdUserGoalsTable < ActiveRecord::Migration
  def up
    rename_column :user_goals, :user_id, :profile_id
    rename_column :global_goals, :user_id, :profile_id
  end

  def down
    rename_column :user_goals, :profile_id, :user_id
    rename_column :global_goals, :profile_id, :user_id
  end
end
