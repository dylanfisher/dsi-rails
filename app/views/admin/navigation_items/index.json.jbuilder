json.array!(@navigation_items) do |navigation_item|
  json.extract! navigation_item, :page_id, :title, :link
  json.url navigation_item_url(navigation_item, format: :json)
end