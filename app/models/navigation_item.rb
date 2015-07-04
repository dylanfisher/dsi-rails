class NavigationItem < ActiveRecord::Base
  belongs_to :page
  belongs_to :navigation_item
  has_one :navigation_item

  def self.primary_nav
    where(navigation_item_id: nil)
  end

  def self.sub_nav(navigation_item)
    where(navigation_item_id: navigation_item.id)
  end

  def navigation_title
    if self.try(:title).present?
      title
    elsif self.try(:page).try(:title).present?
      page.title
    else
      id
    end
  end
end
