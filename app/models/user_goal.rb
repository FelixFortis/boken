class UserGoal < ActiveRecord::Base
  attr_accessible :complete, :deadline, :goal_id, :notes, :percent_complete, :user_id
end
