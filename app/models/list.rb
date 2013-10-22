class List < ActiveRecord::Base
  belongs_to :user
  has_many :list_items, dependent: :destroy

  validates_presence_of :user_id

  attr_accessible :list_item_id, :user_id
end
