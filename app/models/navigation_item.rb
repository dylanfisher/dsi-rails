class NavigationItem < ActiveRecord::Base
  belongs_to :page
  belongs_to :navigation_item
  has_one :navigation_item
end
