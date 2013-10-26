# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  complete    :boolean
#

class Goal < ActiveRecord::Base
  attr_accessible :name, :description, :complete
end
