class AddTitleDescriptionToUserGoals < ActiveRecord::Migration
  def up
    add_column :user_goals, :title, :string
    add_column :user_goals, :description, :text
  end
  def down
    remove_column :user_goals, :title
    remove_column :user_goals, :description
  end
end
