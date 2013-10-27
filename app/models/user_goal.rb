# == Schema Information
#
# Table name: user_goals
#
#  id               :integer          not null, primary key
#  profile_id       :integer
#  goal_id          :integer
#  notes            :text
#  deadline         :date
#  percent_complete :integer
#  complete         :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class UserGoal < ActiveRecord::Base
  attr_accessible :complete, :deadline, :goal_id, :notes, :percent_complete, :user_id
end
