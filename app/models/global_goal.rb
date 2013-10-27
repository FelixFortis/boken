# == Schema Information
#
# Table name: global_goals
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  profile_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GlobalGoal < ActiveRecord::Base
  belongs_to :user

  attr_accessible :title, :description
end
