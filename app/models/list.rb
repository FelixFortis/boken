class List < ActiveRecord::Base
  belongs_to :user
  has_many :list_items, dependent: :destroy

  attr_accessible :list_item_id, :user_id
end
