module NavigationItemsHelper

  def navigation_title(navigation_item)
    if navigation_item.try(:title).present?
      navigation_item.title
    elsif navigation_item.try(:page).try(:title).present?
      navigation_item.page.title
    else
      ""
    end
  end

  def navigation_link(navigation_item)
    if navigation_item.try(:link).present?
      navigation_item.link
    elsif navigation_item.try(:page).present?
      page_path(navigation_item.page)
    end
  end

end
