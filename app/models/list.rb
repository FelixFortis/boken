# == Schema Information
#
# Table name: lists
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  list_item_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class List < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user_id

  attr_accessible :list_item_id, :user_id
end
